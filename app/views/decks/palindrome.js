const makePalindrome = (str) => {
  let maybe_add_str = "";
  let def_add_str = "";
  let back = str.length - 1;
  let front = 0;

  while (front < back) {
    maybe_add_str += str[back];

    if (str[front] !== str[back]) {
      back -= 1;
      def_add_str += maybe_add_str;
      maybe_add_str = "";
    } else {
       front += 1;
       back -= 1;
     }
  }
  return (def_add_str + str);
};

console.log(makePalindrome("abba"));
console.log(makePalindrome("bba"));
console.log(makePalindrome("cbcba"));
console.log(makePalindrome("dcba"));
console.log(makePalindrome("bbbbbcdcba"));