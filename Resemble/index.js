const compareImages = require('resemblejs/compareImages');
const fs = require("mz/fs");

async function getDiff(original, mutant, result){

    const options = {
        output: {
            errorColor: {
                red: 255,
                green: 0,
                blue: 255
            },
            errorType: 'movement',
            transparency: 0.3,
            largeImageThreshold: 1200,
            useCrossOrigin: false,
            outputDiff: true
        },
        scaleToSameSize: true,
        ignore: ['nothing'],
    };


      const data = await compareImages(
          await fs.readFile(original),
          await fs.readFile(mutant),
          options
      );
      console.log(JSON.stringify(data))
      if (data.rawMisMatchPercentage > 0.5)
        await fs.writeFile(result, data.getBuffer());


}

getDiff(process.argv[2],
        process.argv[3],
        process.argv[4]);
