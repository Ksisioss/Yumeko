function random(min, max)
{
    return Math.floor(Math.random() * (max - min + 1)) + min;
}

const loot1 = {
    1:75,
    2:25
}

const loot2 = {
    1:50,
    2:35,
    3:15
}


const loot3 ={
    1:30,
    2:40,
    3:20,
    4:10
}

const loot4 = {
    2:40,
    3:40,
    4:20
}


for (i = 0; i < 100; i++) {
}

function generateRarity() {
    var result = random(0, 100)
    var value = 0;
    for (var i in loot2) {
        value+=loot2[i]
        console.log(result + " rareté :" +value);
        if (result < value) {
            console.log("TROUVE :" + i)
            break
        }
    }
}