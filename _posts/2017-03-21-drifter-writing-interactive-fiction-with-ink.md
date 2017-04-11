---
title: "Drifter: Writing interactive fiction with ink"
tags:
    - writing
    - ink
    - tech
    - interactive fiction
---
## TLDR

I recently wrote a text adventure game called [Drifter](http://theconfused.me/drifter).

<a href="http://theconfused.me/drifter"><img class="align-center" src="{{ site.url }}{{ site.baseurl }}/assets/images/drifter.png" alt="Drifter" width="300" rel="http://theconfused.me/drifter"/></a>

> You wake up in someone else's body. What will you do? Can you figure out your purpose?

Bug reports and feedback are welcome! 

---

I recently got inspired to write interactive fiction, after playing [The Train](https://herringblue.github.io/content/train/index.html) by [Ivan Chuang](https://herringblue.github.io/), shared by someone on Facebook. 

It's an intriguing game, but I wasn't satisfied, and the natural response was to make my own. 

The one I read used `ink` (the language, not the real one), and it looks easy enough, so I just decided to stick with it. 

## <span class="icon-laptop"></span> Using ink
Inkle's scripting language [`ink`](https://github.com/inkle/ink) was easy enough to learn. The [tutorial](https://github.com/inkle/ink/blob/master/Documentation/WritingWithInk.md) covered most of the use cases. The [inky IDE](https://github.com/inkle/inky) even supports converting to a web version--a folder with its `html`, `css`, `js` files all ready to be uploaded to a server. 

These are a few things I found useful to note:

If you declare options with the usual `*`, they disappear after being clicked once. This is not a problem if you don't intend to revisit the knot, but if you do, you see your options disappearing after every visit. The way to fix this is to use `+` instead of `*`, that way options persist. 

The documentation mentions shuffling briefly, but since `ink` now supports `LISTS`, what if you want to shuffle from a list? 

From what I know, there are 2 ways to go about doing this. Say you want to get a random item from [apple, orange, pear].
- Without using a list:

```javascript
=== function shuffle_fruits ===
{shuffle:
    - ~ return "apple"
    - ~ return "orange"
    - ~ return "pear"
}
```

- Choose a random number between 1 and the length of the list, then use that number to access the list element. 

```python
LIST fruits = apple, orange, pear
VAR fruit = false
=== function get_random_index ===
    ~ temp length = LIST_COUNT(LIST_ALL(names))
    ~ temp x = RANDOM(1, length)
    ~ return x
~ temp index = get_random_index()
~ fruit = fruits(index)
```

But another problem I faced was that using `LIST` wasn't very friendly for converting to javascript. Whenever I used a `LIST`, the browser complains about `Uncaught Error: Failed to find LIST called undefined`. I couldn't find a way around this, so I resorted to using the first method. Fortunately none of the items I have to shuffle are too long, so it wasn't too tedious. 

Another thing I noiced when writing was that the inky editor didn't seem to ship with the latest `inky.js` file. Sometimes it terminated knots prematurely. I spent some time trying to figure out what's wrong with my code, before I just decided to try downloading the newest `inky.js` file from [here](https://github.com/y-lohse/inkjs), and after that it seemed to work fine. 

The inky editor also crashes a bit too often for my liking. But it is, after all, still in alpha. The fact that it lets you play the game and rewind choices while editing was something I found really useful. 

There are probably more advanced features, but I found that I survived quite well on just basic knots and stitches and some gathering. Perhaps used too many global variables in the process. 

But all in all, a very gentle learning curve.


## <span class="icon-pencil"></span> Coming up with the plot

<div class="notice--warning" markdown="1">
#### Spoiler alert
If you want to play the game without any prior knowledge of the plot, don't read below. This section is pretty general in terms of the elements of interactive fiction, but still might reveal some aspects of the plot.
</div>

Interactive fiction is actually quite different from most of the other forms of writing I've been doing. To be honest, I've never written anything of the sort, and before this, I have been woefully ignorant of the tools available. I don't play much of it either. I didn't even know about the term interactive fiction at first, oops.

But I have read those choose your own adventure books. So I gathered some of my ideas from there, and went around the web looking for resources. [Emily Short's blog](https://emshort.blog/), especially [this post](https://emshort.blog/how-to-play/writing-if/) was quite helpful. 

After some poking around and deep soul searching (not really), these are some of the elements I felt I really wanted to include:
- some sort of escape room element
- a kind of side quest that might provide some benefit to the player in late game stage but is not essential to game development
- some kind of point system and delayed choice consequences
- a really exciting plot(!!!) that makes the reader want to know what is going on

### escape room element
I play escape room games often (though I'm not good at it at all). Escape rooms are fun! But I also dislike a game having too much of it. This is a text adventure, after all. It would be confusing. Maybe some poking around for the player, with a few things to take, and not something full fledged escape room style. 

### side quests
Side quests are what I imagine to be those plot point which are not essential to the main plot development, but may or may not confer a certain benefit to the player in later gameplay. 

For example, in an action game, I would have romance as a sort of side quest. A player can get through the game without it, but perhaps a player who has gone through the romance side quest (by chance or because he happens to carry a certain item) might have increased stat points that allow him to fight certain monsters with ease. Or that there is an alternative happy ending. 

### points system and delayed choice
I don't really like games where there is an obvious bad choice, or there is a choice which makes you die immediately. I like decisions that build up. 

Perhaps if you chose A previously, and you chose B in one of the later choices, then you die. Or if you chose A previously, then some of the NPCs are more likely to be suspicious, and if you get yourself into another dangerous situation, then you'll die. 

Also, I think having sensible choices are important. I have played games where I think to myself, "those definitely aren't the things I would do in real life." But the problem, of course, is that writer does often want to push a plot--you can't allow the player to keep choosing to not participate (although knowing me, that is probably what I would do if given the choice). 

### exciting plot
I say this because some of the text adventures games I played in preparing to write this game gave me the feeling of making you choose for the sake of choosing, without pushing the plot. 

Personally, I feel it is important most choices have a real consequence, and they affect the plot in some way or another. 

## Conclusion
I'm sure there are more bugs to fix. But this is a good mix of writing and coding, and there is instant gratification in that there is something you can show your friends immediately. I mostly write novels, so this is something that I get rarely. 

Perhaps next time, I could try a parser. They give a greater illusion of freedom / choice than CYOA kind of stories where you are choosing from a predefined set of options. But it is still an illusion, isn't it?