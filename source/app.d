import std;

bool isNoun(string s, string[] nouns) {
  
  const string singular = s.chomp(".").chomp(",");

  if (singular.length < 3) { return false; }
  
  const string plural = s[0..$-1];

  return nouns.canFind(singular.toLower)
    || nouns.canFind(plural.toLower)
    || singular.startsWith!(a => std.ascii.isUpper(a))
    || plural.startsWith!(a => std.ascii.isUpper(a))
    || singular.endsWith("ing");
}

Tuple!(string, string) swapLetters(string n1, string n2) {
  bool n1cap = std.ascii.isUpper(n1[0]);
  bool n2cap = std.ascii.isUpper(n2[0]);

  if((!n1cap && !n2cap) || (n1cap && n2cap)) {
    string r1 = n2[0] ~ n1[1..$];
    string r2 = n1[0] ~ n2[1..$];
    return tuple(r1, r2);
  } else {
    if(n1cap) {
      string r1 = std.ascii.toUpper(n2[0]) ~ n1[1..$];
      string r2 = std.ascii.toLower(n1[0]) ~ n2[1..$];
      return tuple(r1, r2);
    } else {
      string r1 = std.ascii.toLower(n2[0]) ~ n1[1..$];
      string r2 = std.ascii.toUpper(n1[0]) ~ n2[1..$];
      return tuple(r1, r2);
    }
  }
}

void main(string[] args)
{
  // 1. Clear executable name from args array.
  args.popFront();
  string[] inputWords;
  // 2. Check if there are command line arguments.
  //    If not, get the input from stdin.
  //    If so, use them as input.
  if (args.length < 1) {
    foreach(l; stdin.byLineCopy.array) {
      inputWords ~= l.split;
    }
  } else {
    inputWords = args[0].split;
  }
  // 3. If no input was provided at all, print sad message. :(
  if(inputWords.length == 0) {
    "No words to switcharino! :(".writeln;
    return;
  }
  // 4. To the mambo jambo.
  string path = readText ("./environment.env").chomp;
  string[] nouns = readText(path).splitLines;

  Tuple!(string, int)[] inputmap;

  foreach(i,w; inputWords) {
    if(w.isNoun(nouns)) {
      inputmap ~= tuple(w, i.to!int); 
    }
  }

  if (inputmap.length % 2 != 0) {
    inputmap.popFront();
  }

  foreach(el; inputmap.slide(2, 2).array) {
    if(el.length < 2) {
      return;
    }
    auto results = swapLetters(el[0][0], el[1][0]);
    
    inputWords[el[0][1]] = results[0];
    inputWords[el[1][1]] = results[1];
  }
  // 5. Print the results.
  inputWords.joiner(" ").writeln;
}
