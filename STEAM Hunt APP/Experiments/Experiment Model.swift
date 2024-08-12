//
//  Experiment.swift
//  STEAM Hunt APP
//
//  Created by Pari Gulati on 8/30/23.
//

import Foundation
import AVKit

struct Experiment: Identifiable {
    var id = UUID()
    var name: String
    var image: String?
    var description: String
    var number: Int
    var video: String?
   /* var player: AVPlayer {
        guard let video else { return AVPlayer() }
        let playerItem = AVPlayerItem(url: video)
        return AVPlayer(playerItem: playerItem)
    }*/
    var hasVideo: Bool {
        guard video != nil else { return false}
        return true
    }
}

var experimentList = [Experiment(name: "Baking Soda Volcano", image: "exp1", description: "In a cup pour some baking soda, then pour vinegar into the cup and see the volcano erupt! To avoid cleaning up a mess, conduct this experiment outdoors. Design the volcano however you want using play-dough, modeling clay, paint, or whatever you like! Observe what happens if you put boiling hot water in the cup along with the baking soda before putting the vinegar.", number: 1, video: "dyLTMS7jE2Q"),
                      Experiment(name: "Tornado In A Bottle", image: "exp2", description: "Fill a water bottle about 3/4 of the way full with water. Then, put some glitter or food coloring (if you want) and seal the bottle tightly. In circular motions spin the water bottle and watch a tornado emerge! Will the tornado form quickly or slowly? Write down your hypothesis and observation.", number: 2, video: "0DXo4Je-G24&t=101s"),
                      Experiment(name: "Balloon Car", image: "exp3", description: "Take an empty bottle (water, Gatorade, etc.) and have four lids of the same size. Put the lids aside and cut two straws of equal length. Tape the straws on the bottle making sure they are parallel from each other. Cut skewers and make them a little longer than the straw so that when you put the skewer in the straw you will still have some room for the lids to fit on the skewer. With the help of an adult make small holes into the lids and push the lids through the skewers. Each skewer should have two wheels on it, one on each side.  Take one more straw and slide the balloon to the top of it and tie it with a rubber band. make sure you can blow it up without any problem. Make a small hole in the top of the bottle and fish the straw through the bottle having the  balloon side up on the bottle and the other side coming out on the open end so you can blow the balloon up. To run your car, blow up the balloon and hold your finger on the hole of the straw so no air escapes from the balloon and when you are ready, release and see your car zoom!", number: 3, video: "jr3BOE_EpOk"),
                      Experiment(name: "Encryption Word Search", image: "exp4", description: "A simple explanation of encryption will be given, as well as different types of encryption. Kids will then try to encrypt their names and a sentence of their own, then they will decipher encrypted code as a word search. Lastly, they will make their own encrypted word search and have others decipher it.", number: 4),
                      Experiment(name: "Lava Lamp", image: "exp5", description: "Fill a water bottle halfway with water and add a few drops of food coloring. Fill the remaining half with cooking oil and let components settle and separate. Then, take an alka-seltzer tablet into four pieces and put a small piece in the bottle. Seal the bottle and observe what happens. For better results put a flash light underneath!", number: 5, video: "qCuFjXGSVB4&t=59s"),
                      Experiment(name: "Decipher Morse Code", image: "exp6", description: "This project serves as an intro to coding and encryption. Kids will first learn what coding and encryption is as a general definition. Next they will learn what dots and dashes are, then experiment by writing their names and a sentence in dots and dashes, and lastly they will learn and try to decipher a message that is written in morse code. .. / .-.. --- ...- . / .. -.-. --- -.. . / .- -. -.. / ... ..- -- -- . .-.",number: 6),
                      Experiment(name: "Salt and Pepper Balloon", image: "exp7", description: "In a plate mix salt and pepper. Then rub a blown up balloon on your head for a few seconds. Place the balloon above the salt and pepper mix and see the pepper latch on to the balloon! Observe what happens if you rub the balloon for longer.", number: 7, video: "qrSrn0zfXuw"),
                      Experiment(name: "Dancing Sprinkles", image: "exp8", description: "Take a bowl and wrap plastic wrap on it tightly. Secure it with a rubber band and pour sprinkles on top. Place a speaker next to the bowl and play pump up music loudly. Watch as the sprinkles move. If you do not have access to a speaker hum very close to the bowl and watch the same thing that occurs. Observe what happens when you play a slower song or hum at a different pitch or frequency.", number: 8, video: "j9IvcwZFx9s"),
                      Experiment(name: "Ice Cube Art", image: "exp9", description: "In a popsicle mold mix water and food coloring and freeze overnight. Take a white paper and start painting with your colored ice! Observe what happens when you overlap the colors.", number: 9, video: "sHm9IxoQrZI&t=5s"),
                      Experiment(name: "Slime", image: "exp10", description: "In a bowl mix 1/2 cup of Elmer's glue and food coloring and glitter (if you want) and stir until mixed. Then pour in one and a half table spoon of detergent into the mix and stir until slime consistency is made. If it is taking too long try adding more detergent.  Make sure not to play with slime near anything nice because it will stick", number: 10, video: "-9CLMxYf2MI&t=13s"),
                      Experiment(name: "Invisible Ink", image: "exp11", description: "Squeeze some lemon juice into a bowl and mix a few drops of water into it. After the solution is mixed, take a q-tip and dip it into the mixture and use it to write on a white paper. Once you are done writing allow the paper to dry and once the paper is dry hold the paper up to a light to reveal your secret message.", number: 11, video: "AOVD7WgFP2s&t=17s"),
                      Experiment(name: "Bean Catapult", image: "exp12", description: "Take popsicle 5 sticks and stack them, securing one end with a rubber band.  Slide one more stick between the bottom stick and the rest of the stack.Secure the other end with a rubber band. Place a spoon on top, and attach the end of the spoon to the end of the single stick with another rubber band. *Crumpled balls of foil and small marshmallows make excellent projectiles for this style of catapult", number: 12,video: "WpLFC_SOpXs&t=7s"),
                      Experiment(name: "Egg Drop", image: "exp13", description: "Experiment different ways you can secure your eggs using skewers, popsicles sticks, cardboard and more. Test your egg by dropping it and see which design works best to save your egg!", number: 13, video: "4y6_K1R_1RY&t=3s"),
                      Experiment(name: "Bath Bomb", image: "exp14", description: "Mix 1 cup of baking soda, 1/2 cup Epsom salt, 1/2 cup cornstarch into a mixing bowl. In a jar 3/4 tbsp. water, 2 tsp. essential oil (lavender, eucalyptus, rose, orange, and lemongrass are popular for the bath), 2 tbsp oil (coconut, olive, or baby oil work), and some food coloring (optional) close the jar and shake all the liquid components very well. Pour the liquid mixture into the bowl of dry ingredients, and use your hands to combine and meld together. At this point, add the citric acid (as an alternative, use the same amount of either lemon juice, cream of tartar, buttermilk powder, or 1/4 cup each of baking powder and apple cider vinegar). You'll probably notice a slight fizzing reaction because of the citric acid. No need to panic, as this is normal. Squeeze the mixture tightly in a mold of your  choice (muffin pan, ball molds) take them out of the molds immediately and let them dry for a day or two, and then they will be ready to use!", number: 14, video: "J_YeSGiNUoQ&t=117s"),
                      Experiment(name: "Build A Bridge", image: "exp15", description: "Using raw spaghetti, marshmallows, and paper experiment different ways to make a bridge that can hold 10 coins and maybe even more! The bridge must span a width of 5 inches but be at least 12 inches long!", number: 15,video: "ab4HDPBZZQY")]


