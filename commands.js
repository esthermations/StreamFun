
// Nightbot functions evaluate JS expressions, so those expressions are just
// written as const here.
const aa = 'a'.repeat((Math.ceil(Math.random() * 100.0) + 1));
const age = ((Date.now() - new Date(1995, 1, 23)) / 1000 / 60 / 60 / 24 / 365);

function numberToBrailleString(intValue) {
    const braille = [ '', '⠁', '⠃', '⠇', '⡇', '⡏', '⡟', '⡿', '⣿' ];
    const num8s = Math.floor(intValue / 8);
    return braille[8].repeat(num8s) + braille[ (intValue % 8) ];
}

