import flixel.tweens.FlxTween;
import flixel.FlxSprite;
import flixel.FlxG;
import flixel.addons.display.FlxBackdrop;
import flixel.FlxState;
import flixel.util.FlxColor;
import flixel.system.FlxSound;
import flixel.system.ui.FlxSoundTray;
import flixel.text.FlxText;

using StringTools;

class GaleryImagePoop extends MusicBeatState
{
	public var selectedIndex = 0;
	public var selectedPage = 0;
	public var zoomedImage:FlxSprite;
	private static var music:FlxSound = null;
	var bananaCringe:FlxSprite;

	override function create()
	{
		var GayScreen = new FlxSprite();
		GayScreen.makeGraphic(1280, 720, FlxColor.BLACK);
		add(GayScreen);

		var Shit:FlxText = new FlxText(12, FlxG.height - 44, 0, "Press ESC to exit", 24);
		Shit.scrollFactor.set();
		Shit.setFormat("VCR OSD Mono", 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		add(Shit);

		var Shit2:FlxText = new FlxText(12, FlxG.height - 24, 0, "Press ENTER to exit with music", 24);
		Shit2.scrollFactor.set();
		Shit2.setFormat("VCR OSD Mono", 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		add(Shit2);

		var Shit3:FlxText = new FlxText(12, FlxG.height - 250, 300, "Sorry but programmer is to dumb to make this", 24);
		Shit3.scrollFactor.set();
		Shit3.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		add(Shit3);

		FlxG.sound.playMusic(Paths.music('imDumb'), 0);
		FlxG.sound.music.fadeIn(1, 0, 0.7);

		bananaCringe = new FlxSprite(FlxG.width * 0.4, FlxG.height * 0.04);
		bananaCringe.x = 450;
		bananaCringe.frames = Paths.getSparrowAtlas("BananaCringe");
		bananaCringe.animation.addByIndices("DanceBanana", "DanceBanana", [0, 1, 2, 3, 4, 5], "", 24, true);
		bananaCringe.antialiasing = true;
		add(bananaCringe);
		bananaCringe.animation.play("DanceBanana");
		bananaCringe.updateHitbox();

		

	}

	public override function update(elapsed)
		{
			if (FlxG.keys.justPressed.ESCAPE){
				MusicBeatState.switchState(new MainMenuState ());
				FlxG.sound.playMusic(Paths.music('freakyMenu'), 0);
				FlxG.sound.music.fadeIn(2, 0, 0.7);
			}

			if(FlxG.keys.justPressed.ENTER){
				MusicBeatState.switchState(new MainMenuState ());
			}
			
			
			
			
		}
}