import Jimp from 'jimp'
import JishoAPI from 'unofficial-jisho-api';
const jisho = new JishoAPI();

jisho.searchForKanji('下').then(result => {
    let x = 0;
    for (let i = 0; i < result.kunyomi.length; i++) {
        console.log(x + "k :" + result.kunyomi[i])
        x++;
    }
    for (let i = 0; i < result.onyomi.length; i++) {
        console.log(x + "o :" + result.onyomi[i])
        x++;
    }
})

/*
async function textOverlay() {
   // Reading image
    const image = await Jimp.read('carte.jpg');
    console.log(image.getHeight() + " " + image.getWidth())
    // Defining the text font
    //const font = await Jimp.loadFont(Jimp.KaishoMCBK1ProLite);
    const font = await Jimp.loadFont("Mincho.fnt")
    image.print(font, 850, 550, '年');
   // Writing image after processing
    await image.writeAsync('./test.jpg');
}

textOverlay();
console.log("Image is processed succesfully");*/