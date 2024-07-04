const axios = require('axios');
const fs = require('fs');
const path = require('path');

const API_KEY = 'R6JRUsaNEqSiVMr0uxnvZWkHvZaqTb7GNEHM2TieXlkRd5jqM3efKHmX';
const query = 'car'; // You can change this to any search term
const numImages = 20; // Number of images to download

async function downloadImage(url, filepath) {
    const response = await axios({
        url,
        method: 'GET',
        responseType: 'stream'
    });

    return new Promise((resolve, reject) => {
        response.data.pipe(fs.createWriteStream(filepath))
            .on('finish', () => resolve())
            .on('error', e => reject(e));
    });
}

async function fetchImages(query, numImages) {
    try {
        const response = await axios.get(`https://api.pexels.com/v1/search`, {
            headers: {
                Authorization: API_KEY
            },
            params: {
                query,
                per_page: numImages
            }
        });

        return response.data.photos;
    } catch (error) {
        console.error('Error fetching images:', error);
        return [];
    }
}

async function main() {
    const images = await fetchImages(query, numImages);

    if (images.length === 0) {
        console.log('No images found.');
        return;
    }

    if (!fs.existsSync('./images')) {
        fs.mkdirSync('./images');
    }

    for (const image of images) {
        const url = image.src.original;
        const filename = path.basename(url);
        const filepath = path.resolve(__dirname, 'images', filename);

        try {
            await downloadImage(url, filepath);
            console.log(`Downloaded ${filename}`);
        } catch (error) {
            console.error(`Error downloading ${filename}:`, error);
        }
    }
}

main();



// DOCUMENTATION


// <a href="https://www.pexels.com">Photos provided by Pexels</a>

// <!-- or show our white logo -->

// <a href="https://www.pexels.com">
//   <img src="https://images.pexels.com/lib/api/pexels-white.png" />
// </a>

// <!-- or show our black logo -->

// <a href="https://www.pexels.com">
//   <img src="https://images.pexels.com/lib/api/pexels.png" />
// </a>