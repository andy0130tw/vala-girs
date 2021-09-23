/* switchboard-2.0.vapi generated by valac 0.54.0.2-2ed5c, do not modify. */

namespace Switchboard {
	[CCode (cheader_filename = "switchboard.h")]
	public abstract class Plug : GLib.Object {
		public enum Category {
			PERSONAL,
			HARDWARE,
			NETWORK,
			SYSTEM,
			OTHER
		}
		/**
		 * The common used separator.
		 */
		public const string SEP;
		protected Plug ();
		/**
		 * Returns the widget that contain the whole interface.
		 *
		 * @return a {@link Gtk.Widget} containing the interface.
		 */
		public abstract Gtk.Widget get_widget ();
		/**
		 * Called when the plug disappear to the user.
		 * 
		 * This is not called when the plug got destroyed or the window is closed, use ~Plug () instead.
		 */
		public abstract void hidden ();
		/**
		 * This function should return the widget that contain the whole interface.
		 * 
		 * When the user click on an action, the second parameter is send to the {@link search_callback} method
		 * 
		 * @param search a {@link string} that represent the search.
		 * @return a {@link Gee.TreeMap} containing two strings like {"Keyboard → Behavior → Duration", "keyboard<sep>behavior"}.
		 */
		public abstract async Gee.TreeMap<string,string> search (string search);
		/**
		 * This function is used when the user click on a search result, it should show the selected setting (right tab…).
		 * 
		 * @param location a {@link string} that represents the setting to show.
		 */
		public abstract void search_callback (string location);
		/**
		 * Called when the plug appears to the user.
		 */
		public abstract void shown ();
		/**
		 * Inform if the plug should be shown or not
		 */
		public bool can_show { get; set; }
		/**
		 * The category under which the plug will be stored.
		 * 
		 * Possible {@link Category} values are PERSONAL, HARDWARE, NETWORK or SYSTEM.
		 */
		public Switchboard.Plug.Category category { get; construct; }
		/**
		 * The unique name representing the plug.
		 * 
		 * It is also used to recognise it with the open-plug command.
		 * for example "system-pantheon-info" for the official Info plug of the pantheon desktop.
		 */
		public string code_name { get; construct; }
		/**
		 * A short description of the plug.
		 */
		public string description { get; construct; }
		/**
		 * The localised name of the plug.
		 */
		public string display_name { get; construct; }
		/**
		 * The icon representing the plug.
		 */
		public string icon { get; construct; }
		public Gee.TreeMap<string,string?> supported_settings { get; construct; }
		/**
		 * Inform the application that the plug can now be listed in the available plugs.
		 * The application will also listen to the notify::can-show signal.
		 */
		public signal void visibility_changed ();
	}
	[CCode (cheader_filename = "switchboard.h")]
	public class PlugsManager : GLib.Object {
		public static Switchboard.PlugsManager get_default ();
		public Gee.Collection<Switchboard.Plug> get_plugs ();
		public bool has_plugs ();
		public signal void plug_added (Switchboard.Plug plug);
	}
}
