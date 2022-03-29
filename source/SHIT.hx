package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.app.Application;
import flixel.addons.display.FlxBackdrop;
import flixel.addons.display.FlxGridOverlay;

class SHIT extends MusicBeatState
{
	var backdrops:FlxBackdrop;

	override function create()
	{
		super.create();
		var gay:FlxSprite = new FlxSprite(0, 0).loadGraphic(Paths.image('pricol/pricol', 'preload'));
		add(gay);
		FlxG.camera.fade(FlxColor.BLACK, 0.8, true);

		backdrops = new FlxBackdrop(Paths.image('pricol/grid'), 0.2, 0.2, true, true);
		backdrops.alpha = 0.2;
		backdrops.x -= 35;
		add(backdrops);

		var gayText:FlxSprite = new FlxSprite(0, 0).loadGraphic(Paths.image('pricol/pricolTXT', 'preload'));
		add(gayText);
	}

	override function update(elapsed:Float)
	{
		if (controls.ACCEPT)
		{
			FlxG.switchState(new MainMenuState());
		}
		super.update(elapsed);

		backdrops.x -= .25*(elapsed/(1/120));
		backdrops.y += .25*(elapsed/(1/120));
	}
}
