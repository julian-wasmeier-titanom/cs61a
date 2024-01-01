function pigl(wd) {
  if (vowel(wd[0])) {
    return wd + "ay";
  } else return pigl(wd.slice(1) + wd[0]);
}

function vowel(letter) {
  return "aeiou".includes(letter);
}
