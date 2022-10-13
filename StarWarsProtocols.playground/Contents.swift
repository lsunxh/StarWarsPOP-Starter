/*:
 # Star Wars Protocols
 
 Below are six structs -- three for Jedi ("Master ...") and three for Sith ("Darth ...").  As you can see comparing the structs, there are some powers which are *specific to the Jedi*, some that are *specific to the Sith*, and some that are *common to any Force user*, whether Jedi or Sith.  Using protocols and extensions as appropriate, refactor this set of structs so that each struct is smaller and less verbose, but retains all of the functionality listed in the handout.
*/
protocol ForceUser {
  func lightSaberSkill() -> Int
  func telekinesis() -> Int
  func prescience() -> Int
}

extension ForceUser {
  func lightSaberSkill() ->Int {
    return 8
  }
  func telekinesis() -> Int {
    return 5
  }
  func prescience() -> Int {
    return 5

  }
}

protocol Jedi: ForceUser {
  func introspection() -> String
  func mindControl() -> String
  
}

extension Jedi {
//  func lightSaberskill() ->Int {
//    return 8
//  }
//  func telekinesis() -> Int {
//    return 5
//  }
//  func prescience() -> Int {
//    return 5
//  }
}

protocol Darth: ForceUser {
  func forceChoke() -> Bool
  func forceLightning() -> Bool
}

extension Darth {
  func forceChoke() -> Bool { return true }
  func forceLightning() -> Bool { return true }
}

struct MasterYoda{}
struct MasterObiWan{}
struct MasterQuiGon{}
struct DarthVader{}
struct DarthSidious{}
struct DarthTyrannous{}

extension MasterYoda: Jedi {
  func telekinesis() -> Int { return 9 }
  func introspection() -> String { return "Search your feelings." }
  func mindControl() -> String { return "Do or do not." }
}

extension MasterObiWan: Jedi {
  func introspection() -> String { return "Search your feelings." }
  func mindControl() -> String { return "These are not the droids you're looking for." }
}

extension MasterQuiGon: Jedi {
  func mindControl() -> String { return "Republic credits will do." }
  func introspection() -> String { return "Feel, don’t think. Trust your instincts." }
}

extension DarthVader: Darth {
  func lightSaberSkill() -> Int { return 9 }
  func telekinesis() -> Int { return 8 }
  func forceLightning() -> Bool { return false }
}

extension DarthSidious: Darth {
  func telekinesis() -> Int { return 7 }
  func prescience() -> Int { return 6 }
}

extension DarthTyrannous: Darth {
  func telekinesis() -> Int { return 5 }
  func forceChoke() -> Bool { return false }
}

/*:
 Place your refactored structs below:
 */
