<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Hand Landmark Detection using MediaPipe HandLandmarker</title>
        <link href="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.css" rel="stylesheet">
        <style>
            body {
                font-family: Roboto;
                margin: 2em;
                color: #3d3d3d;
                --mdc-theme-primary: #007f8b;
                --mdc-theme-on-primary: #f1f3f4;
            }

            h1 {
                color: #007f8b;
            }

            h2 {
                clear: both;
            }

            em {
                font-weight: bold;
            }

            section {
                opacity: 1;
                transition: opacity 500ms ease-in-out;
            }

            header,
            footer {
                clear: both;
            }

            .removed {
                display: none;
            }

            .invisible {
                opacity: 0.2;
            }

            .note {
                font-style: italic;
                font-size: 130%;
            }

            .video-container {
                position: relative;
                width: 100%;
                max-width: 640px;
                margin: auto;
            }

            video {
                display: block;
                width: 100%;
                transform: rotateY(180deg);
                -webkit-transform: rotateY(180deg);
                -moz-transform: rotateY(180deg);
            }

            .output_canvas {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                pointer-events: none;
                transform: rotateY(180deg);
                -webkit-transform: rotateY(180deg);
                -moz-transform: rotateY(180deg);
            }

            .detectOnClick {
                cursor: pointer;
                margin-bottom: 2em;
            }

            .detectOnClick img {
                width: 100%;
            }

            .swipe-mode {
                position: fixed;
                top: 1em;
                right: 1em;
            }

            .checkbox {
                display: none;
            }

            .checkbox-label {
                cursor: pointer;
                text-align: center;
                font-size: 2em;
            }

            .checkbox-label .ball {
                display: inline-block;
                background-color: #ccc;
                border-radius: 50%;
                width: 1em;
                height: 1em;
                position: relative;
                transition: 0.2s;
            }

            .checkbox:checked + .checkbox-label .ball {
                background-color: #333;
                transform: translateX(1.5em);
            }

            .dark {
                background-color: #222;
                color: #ddd;
            }
        </style>
    </head>

    <body>
        <section id="demos" class="invisible">
            <div class="video-container" id="liveView">
                <button id="webcamButton" class="mdc-button mdc-button--raised">
                    <span class="mdc-button__ripple"></span>
                    <span class="mdc-button__label">ENABLE WEBCAM</span>
                </button>
                <video id="webcam" autoplay playsinline></video>
                <canvas class="output_canvas" id="output_canvas"></canvas>
            </div>
            <h3>Finger Count: <span id="fingerCount">0</span></h3>
        </section>
        <div class="swipe-mode px-2">
            <input type="checkbox" class="checkbox" id="checkbox">
            <label for="checkbox" class="checkbox-label">
                <i class="fas fa-moon"></i>
                <i class="fas fa-sun"></i>
                <span class="ball"></span>
            </label>
        </div>

        <script type="module">
            import {
            HandLandmarker,
                    FilesetResolver
            } from "https://cdn.jsdelivr.net/npm/@mediapipe/tasks-vision@0.10.0";
            const demosSection = document.getElementById("demos");

            let handLandmarker = undefined;
            let runningMode = "IMAGE";
            let enableWebcamButton;
            let webcamRunning = false;

            const createHandLandmarker = async () => {
                const vision = await FilesetResolver.forVisionTasks(
                        "https://cdn.jsdelivr.net/npm/@mediapipe/tasks-vision@0.10.0/wasm"
                        );
                handLandmarker = await HandLandmarker.createFromOptions(vision, {
                    baseOptions: {
                        modelAssetPath: `https://storage.googleapis.com/mediapipe-models/hand_landmarker/hand_landmarker/float16/1/hand_landmarker.task`,
                        delegate: "GPU"
                    },
                    runningMode: runningMode,
                    numHands: 2
                });
                demosSection.classList.remove("invisible");
            };
            createHandLandmarker();

            const imageContainers = document.getElementsByClassName("detectOnClick");

            for (let i = 0; i < imageContainers.length; i++) {
                imageContainers[i].children[0].addEventListener("click", handleClick);
            }

            async function handleClick(event) {
                if (!handLandmarker) {
                    console.log("Wait for handLandmarker to load before clicking!");
                    return;
                }

                if (runningMode === "VIDEO") {
                    runningMode = "IMAGE";
                    await handLandmarker.setOptions({runningMode: "IMAGE"});
                }

                const allCanvas = event.target.parentNode.getElementsByClassName("canvas");
                for (let i = allCanvas.length - 1; i >= 0; i--) {
                    const n = allCanvas[i];
                    n.parentNode.removeChild(n);
                }

                const handLandmarkerResult = await handLandmarker.detect(event.target);
                const canvas = document.createElement("canvas");
                canvas.setAttribute("class", "canvas");
                canvas.setAttribute("width", event.target.naturalWidth + "px");
                canvas.setAttribute("height", event.target.naturalHeight + "px");
                canvas.style = `left: 0px; top: 0px; width: ${event.target.width}px; height: ${event.target.height}px;`;

                event.target.parentNode.appendChild(canvas);
                const ctx = canvas.getContext("2d");
                for (const landmarks of handLandmarkerResult.landmarks) {
                    drawConnectors(ctx, landmarks, HAND_CONNECTIONS, {
                        color: "#00FF00",
                        lineWidth: 5
                    });
                    drawLandmarks(ctx, landmarks, {
                        color: "#FF0000",
                        lineWidth: 1
                    });
                }
            }

            const video = document.getElementById("webcam");
            const canvasElement = document.getElementById("output_canvas");
            const canvasCtx = canvasElement.getContext("2d");

            const hasGetUserMedia = () => !!navigator.mediaDevices?.getUserMedia;

            if (hasGetUserMedia()) {
                enableWebcamButton = document.getElementById("webcamButton");
                enableWebcamButton.addEventListener("click", enableCam);
            } else {
                console.warn("getUserMedia() is not supported by your browser");
            }

            function enableCam(event) {
                if (!handLandmarker) {
                    console.log("Wait! handLandmarker not loaded yet.");
                    return;
                }

                if (webcamRunning === true) {
                    webcamRunning = false;
                    enableWebcamButton.innerText = "ENABLE PREDICTIONS";
                } else {
                    webcamRunning = true;
                    enableWebcamButton.innerText = "DISABLE PREDICTIONS";
                }

                const constraints = {
                    video: true
                };

                navigator.mediaDevices.getUserMedia(constraints).then((stream) => {
                    video.srcObject = stream;
                    video.addEventListener("loadeddata", predictWebcam);
                });
            }

            let lastVideoTime = -1;
            let results = undefined;

            async function predictWebcam() {
                canvasElement.style.width = video.videoWidth + "px";
                canvasElement.style.height = video.videoHeight + "px";
                canvasElement.width = video.videoWidth;
                canvasElement.height = video.videoHeight;

                if (runningMode === "IMAGE") {
                    runningMode = "VIDEO";
                    await handLandmarker.setOptions({runningMode: "VIDEO"});
                }
                let startTimeMs = performance.now();
                if (lastVideoTime !== video.currentTime) {
                    lastVideoTime = video.currentTime;
                    results = await handLandmarker.detectForVideo(video, startTimeMs);
                }
                canvasCtx.save();
                canvasCtx.clearRect(0, 0, canvasElement.width, canvasElement.height);

                let fingerCount = 0;
                if (results.landmarks) {
                    for (const landmarks of results.landmarks) {
                        drawConnectors(canvasCtx, landmarks, HAND_CONNECTIONS, {color: "#00FF00", lineWidth: 5});
                        drawLandmarks(canvasCtx, landmarks, {color: "#FF0000", lineWidth: 2});

                        fingerCount = countFingers(landmarks);
                    }
                }
                document.getElementById("fingerCount").innerText = fingerCount;

                // Toggle dark mode based on finger count
                if (fingerCount === 1) {
                    checkbox.checked = true;
                    document.body.classList.add("dark");
                } else if (fingerCount === 2) {
                    checkbox.checked = false;
                    document.body.classList.remove("dark");
                }

                canvasCtx.restore();

                if (webcamRunning === true) {
                    window.requestAnimationFrame(predictWebcam);
                }
            }

            function countFingers(landmarks) {
                const fingerTips = [8, 12, 16, 20];
                let count = 0;
                for (let i = 0; i < fingerTips.length; i++) {
                    if (landmarks[fingerTips[i]].y < landmarks[fingerTips[i] - 2].y) {
                        count++;
                    }
                }
                // Check thumb
                if (landmarks[4].x < landmarks[3].x) {
                    count++;
                }
                return count;
            }

            const HAND_CONNECTIONS = [
                [0, 1], [1, 2], [2, 3], [3, 4], [0, 5], [5, 6], [6, 7], [7, 8],
                [5, 9], [9, 10], [10, 11], [11, 12], [9, 13], [13, 14], [14, 15],
                [15, 16], [13, 17], [0, 17], [17, 18], [18, 19], [19, 20], [17, 20]
            ];

            function drawConnectors(ctx, landmarks, connections, { color, lineWidth }) {
                const canvasWidth = ctx.canvas.width;
                const canvasHeight = ctx.canvas.height;

                ctx.lineWidth = lineWidth;
                ctx.strokeStyle = color;

                connections.forEach(([start, end]) => {
                    const startLandmark = landmarks[start];
                    const endLandmark = landmarks[end];

                    ctx.beginPath();
                    ctx.moveTo(startLandmark.x * canvasWidth, startLandmark.y * canvasHeight);
                    ctx.lineTo(endLandmark.x * canvasWidth, endLandmark.y * canvasHeight);
                    ctx.stroke();
                });
            }

            function drawLandmarks(ctx, landmarks, { color, lineWidth }) {
                const canvasWidth = ctx.canvas.width;
                const canvasHeight = ctx.canvas.height;

                ctx.fillStyle = color;
                ctx.lineWidth = lineWidth;

                landmarks.forEach(landmark => {
                    ctx.beginPath();
                    ctx.arc(landmark.x * canvasWidth, landmark.y * canvasHeight, lineWidth, 0, 2 * Math.PI);
                    ctx.fill();
                });
            }

            const checkbox = document.getElementById("checkbox");

            // Function to set a cookie
            function setCookie(name, value, days) {
                const d = new Date();
                d.setTime(d.getTime() + (days * 24 * 60 * 60 * 1000));
                const expires = "expires=" + d.toUTCString();
                document.cookie = name + "=" + (value || "") + ";" + expires + ";path=/";
            }

            // Function to get a cookie by name
            function getCookie(name) {
                const nameEQ = name + "=";
                const ca = document.cookie.split(';');
                for (let i = 0; i < ca.length; i++) {
                    let c = ca[i];
                    while (c.charAt(0) === ' ')
                        c = c.substring(1);
                    if (c.indexOf(nameEQ) === 0)
                        return c.substring(nameEQ.length, c.length);
                }
                return null;
            }

            // Function to apply the dark mode based on the cookie value
            function applyDarkMode() {
                const darkMode = getCookie("darkMode");
                if (darkMode === "true") {
                    document.body.classList.add("dark");
                    checkbox.checked = true;
                } else {
                    document.body.classList.remove("dark");
                    checkbox.checked = false;
                }
            }

            // Event listener to toggle dark mode and set the cookie
            checkbox.addEventListener("change", () => {
                const isChecked = checkbox.checked;
                if (isChecked) {
                    document.body.classList.add("dark");
                } else {
                    document.body.classList.remove("dark");
                }
                setCookie("darkMode", isChecked, 7); // Save the preference for 7 days
            });

            // Apply dark mode based on the saved cookie value on page load
            applyDarkMode();
        </script>
    </body>

</html>
