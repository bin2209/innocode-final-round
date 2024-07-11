<%@page contentType="text/html" pageEncoding="UTF-8" import="model.*" import="model.DAO.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>
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
</style>
<nav id="nav" class="navbar navbar-expand-lg overplay-blur shadow">
    <div class="container d-flex" style="z-index: 999999999;">
        <a class="navbar-brand col-3" href="${pageContext.request.contextPath}">
            <img src="${pageContext.request.contextPath}/assets/images/fpt.svg" style="width: 60px;" /> </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="col-6 collapse navbar-collapse  justify-content-between" id="navbarNav">

            <ul class="navbar-nav mx-auto">
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/news#news">News</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/achievements#achievements">Achievements</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/stocks">Stocks</a>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link" href="${pageContext.request.contextPath}/courses" id="majorDropdown" role="button" aria-haspopup="true" aria-expanded="false">Major<span class="have-sub"> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-down" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708"/>
</svg></span></a>
                    <ul class="dropdown-menu  rounded-1 shadow" aria-labelledby="majorDropdown">
                        <div class="position-absolute w-100 h-100 overlay-blur" style="z-index: -1;"></div>
                        <div class="position-relative">
                            <c:forEach var="major" items="${majors}">
                                <li class=""><a class="dropdown-item rounded" href="${pageContext.request.contextPath}/courses?majorId=${major.majorId}#courses">
                                        ${major.title}
                                    </a></li>
                                </c:forEach>
                        </div>
                    </ul>
                </li>

            </ul>

        </div>
        <div class="col-3 d-flex     align-items-center justify-content-end">     

            <c:choose>
                <c:when test="${not empty USER}">
                    <ul class="navbar-nav">
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="${pageContext.request.contextPath}/courses" id="majorDropdown" role="button" aria-haspopup="true" aria-expanded="false">Hi, ${USER.email} <span class="have-sub"> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-down" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708"/>
</svg></span></a>
                        <ul class="dropdown-menu  rounded-1 shadow" aria-labelledby="majorDropdown">
                            <div class="position-absolute w-100 h-100 overlay-blur" style="z-index: -1;"></div>
                            <div class="position-relative">
                               
                                 <li class=""><a class="dropdown-item rounded" href="${pageContext.request.contextPath}/dashboard">
                                       Dashboard
                                    </a></li>
                                
                                <li class=""><a class="dropdown-item rounded" href="${pageContext.request.contextPath}/logout">Logout</a></li>
                            </div>
                        </ul>
                    </li>
                    </ul>

                </c:when>
                <c:otherwise>
                    <a class="btn rounded new-button" href="${pageContext.request.contextPath}/login?value=login">Log In</a>
                </c:otherwise>
            </c:choose>

        </div>

    </div>

    <!-- Webcam Modal -->
    <div class="webcam-popup modal fade" id="webcamModal" tabindex="-1" aria-labelledby="webcamModalLabel" aria-hidden="true" data-bs-backdrop="static" data-bs-keyboard="false">
        <div class="modal-dialog">
            <div class="modal-content rounded1dot2">
                <div class="modal-header">
                    <h3 class="modal-title" id="webcamModalLabel">Hand Tracking</h3>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <section id="demos">
                        <div class="video-container" class="mb-3" id="liveView">
                            <video id="webcam" autoplay playsinline></video>
                            <canvas class="output_canvas" id="output_canvas"></canvas>
                        </div>
                    </section>
                    <p> 1 finger to turn Dark Mode On </p>
                    <p> 2 fingers to turn Dark Mode On </p>
                    <p> 5 fingers to turn off Camera</p>

                </div>
            </div>
        </div>
    </div>
    <div class="position-absolute w-100 h-100 top-0 right-0 d-flex justify-content-end align-items-center">
        <div class="swipe-mode px-2" style="width: 100px">
            <input type="checkbox" class="checkbox" id="checkbox">
            <label for="checkbox" class="checkbox-label">
                <i class="fas fa-moon"></i>
                <i class="fas fa-sun"></i>
                <span class="ball"></span>
            </label>
        </div>
        <div style="width: 50px">
            <a id="webcamButton" class="nav-link" data-bs-toggle="modal" data-bs-target="#webcamModal">
                <svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" fill="currentColor" class="bi bi-lightning-charge-fill" viewBox="0 0 16 16">
                <path d="M11.251.068a.5.5 0 0 1 .227.58L9.677 6.5H13a.5.5 0 0 1 .364.843l-8 8.5a.5.5 0 0 1-.842-.49L6.323 9.5H3a.5.5 0 0 1-.364-.843l8-8.5a.5.5 0 0 1 .615-.09z"/>
                </svg>
            </a>
        </div>
    </div>
</nav>



<script type="module">
    import { HandLandmarker, FilesetResolver } from "https://cdn.jsdelivr.net/npm/@mediapipe/tasks-vision@0.10.0";
    const demosSection = document.getElementById("demos");
    let handLandmarker = undefined;
    let runningMode = "IMAGE";
    let webcamRunning = false;
    const enableWebcamButton = document.getElementById("webcamButton");
    const video = document.getElementById("webcam");
    const canvasElement = document.getElementById("output_canvas");
    const canvasCtx = canvasElement.getContext("2d");
    let lastVideoTime = -1;
    let results = undefined;
    const checkbox = document.getElementById("checkbox");
    const webcamModal = document.getElementById("webcamModal");
    let fingerCount = 0;

    enableWebcamButton.addEventListener("click", toggleWebcam);

    async function createHandLandmarker() {
        const vision = await FilesetResolver.forVisionTasks("https://cdn.jsdelivr.net/npm/@mediapipe/tasks-vision@0.10.0/wasm");
        handLandmarker = await HandLandmarker.createFromOptions(vision, {
            baseOptions: {
                modelAssetPath: `https://storage.googleapis.com/mediapipe-models/hand_landmarker/hand_landmarker/float16/1/hand_landmarker.task`,
                delegate: "GPU"
            },
            runningMode: runningMode,
            numHands: 2
        });
        demosSection.classList.remove("invisible");
    }
    createHandLandmarker();

    async function toggleWebcam() {
        if (!handLandmarker) {
            console.log("Wait! handLandmarker not loaded yet.");
            return;
        }

        if (webcamRunning) {
            stopWebcam();
        } else {
            startWebcam();
        }
    }

    function startWebcam() {
        navigator.mediaDevices.getUserMedia({video: true})
                .then((stream) => {
                    video.srcObject = stream;
                    video.addEventListener("loadeddata", () => {
                        runningMode = "VIDEO";
                        handLandmarker.setOptions({runningMode: "VIDEO"});
                        webcamRunning = true;
//                        enableWebcamButton.innerText = "DISABLE PREDICTIONS";
                        predictWebcam();
                    });
                })
                .catch((error) => {
                    console.error("Error accessing webcam:", error);
                });
    }

    function stopWebcam() {
        if (video.srcObject) {
            video.srcObject.getTracks().forEach(track => track.stop());
        }
        video.srcObject = null;
        webcamRunning = false;
//        enableWebcamButton.innerText = "ENABLE WEBCAM";
    }

    async function predictWebcam() {
//        canvasElement.style.width = video.videoWidth + "px";
//        canvasElement.style.height = video.videoHeight + "px";

        canvasElement.style.width = "100%";
        canvasElement.style.height = "100%";
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
                handleScroll(landmarks);
            }
        }

        // Handle different finger counts
        if (fingerCount === 1) {
            checkbox.checked = true;
            document.body.classList.add("dark");
        } else if (fingerCount === 2) {
            checkbox.checked = false;
            document.body.classList.remove("dark");
        } else if (fingerCount === 5) {
            // Stop webcam and close modal
            stopWebcam();
            const modal = bootstrap.Modal.getInstance(webcamModal);
            if (modal) {
                modal.hide();
            }
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

    function handleScroll(landmarks) {
        const canvasHeight = canvasElement.height;
        const indexTip = landmarks[8];
        const middleTip = landmarks[12];

        // Calculate distance between index and middle fingers
        const distance = Math.abs(indexTip.y - middleTip.y) * canvasHeight;

        // Define scroll speed based on distance
        const scrollSpeed = 10; // Adjust this value as needed

        // Scroll smoothly based on finger positions
        if (indexTip.y * canvasHeight > canvasHeight && middleTip.y * canvasHeight > canvasHeight) {
            // Both fingers are below the canvas, scroll down
            window.scrollBy(0, scrollSpeed);
        } else if (indexTip.y * canvasHeight < 0 && middleTip.y * canvasHeight < 0) {
            // Both fingers are above the canvas, scroll up
            window.scrollBy(0, -scrollSpeed);
        }
    }

    const HAND_CONNECTIONS = [
        [0, 1], [1, 2], [2, 3], [3, 4],
        [0, 5], [5, 6], [6, 7], [7, 8],
        [5, 9], [9, 10], [10, 11], [11, 12],
        [9, 13], [13, 14], [14, 15], [15, 16],
        [13, 17], [0, 17], [17, 18], [18, 19], [19, 20], [17, 20]
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

    // Event listener for when the modal is closed
    webcamModal.addEventListener("hidden.bs.modal", () => {
        stopWebcam();
    });
</script>


