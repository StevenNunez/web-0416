var Person = (function() {
  'use strict';
  // using named expressions for no special reason
  var sayHi = function(){
    console.log(`Hi, it's ${this.name}`);
  }

  var addFriend = function (friendName) {
    this.friends.push(friendName)
  };

  var greetFriends = function () {
    this.friends.forEach(greetFriend, this)
  };

  var greetFriend = function (friend) {
    console.log(`${this.name} says hi to ${friend}`);
  };

  // return an object
  // Notice we're not exposing greetFriend, it's private
  return {
    init: function(name){
      return {
        name: name,
        friends: [],
        sayHi: sayHi,
        addFriend: addFriend,
        greetFriends: greetFriends
      }
    }
  }
}());
var me = Person.init("Steven")
me.addFriend("Sophie")
me.addFriend("Antoin")
me.greetFriends()
me.sayHi()
