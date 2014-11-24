/* rygel-renderer-gst-2.6.vapi generated by valac 0.26.0.49-3a6f, do not modify. */

namespace Rygel {
	namespace Playbin {
		[CCode (cheader_filename = "rygel-renderer-gst.h")]
		public class Player : GLib.Object, Rygel.MediaPlayer {
			[Deprecated (since = "0.23.1")]
			public static Rygel.Playbin.Player get_default ();
			public static Rygel.Playbin.Player instance () throws GLib.Error;
			[Deprecated (since = "0.21.5")]
			public Player.wrap (Gst.Element playbin);
			public Gst.Element playbin { get; private set; }
			public GLib.List<Rygel.DLNAProfile> supported_profiles { get; }
		}
		[CCode (cheader_filename = "rygel-renderer-gst.h")]
		public class Renderer : Rygel.MediaRenderer {
			public Renderer (string title);
			public Gst.Element? get_playbin ();
			[Deprecated (since = "0.23.1")]
			public Renderer.wrap (Gst.Element pipeline, string title);
		}
		[CCode (cheader_filename = "rygel-renderer-gst.h")]
		public errordomain PlayerError {
			NO_ELEMENT
		}
	}
}
