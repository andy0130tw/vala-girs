/* retro-gtk-1.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Retro", gir_namespace = "Retro", gir_version = "1", lower_case_cprefix = "retro_")]
namespace Retro {
	[CCode (cheader_filename = "retro-gtk.h", type_id = "retro_controller_iterator_get_type ()")]
	public class ControllerIterator : GLib.Object {
		[CCode (has_construct_function = false)]
		protected ControllerIterator ();
		public bool next (out uint port, out Retro.Controller? controller);
	}
	[CCode (cheader_filename = "retro-gtk.h", type_id = "retro_core_get_type ()")]
	public class Core : GLib.Object {
		[CCode (has_construct_function = false)]
		public Core (string filename);
		public void boot () throws GLib.Error;
		public uint get_api_version ();
		public bool get_can_access_state ();
		public unowned string get_content_directory ();
		public unowned string get_filename ();
		public double get_frames_per_second ();
		public bool get_game_loaded ();
		public bool get_is_initiated ();
		public size_t get_memory_size (Retro.MemoryType memory_type);
		public unowned Retro.Option get_option (string key);
		public uint get_runahead ();
		public unowned string get_save_directory ();
		public double get_speed_rate ();
		public bool get_support_no_game ();
		public unowned string get_system_directory ();
		public bool has_option (string key);
		public Retro.ControllerIterator iterate_controllers ();
		public Retro.OptionIterator iterate_options ();
		public void load_memory (Retro.MemoryType memory_type, string filename) throws GLib.Error;
		public void load_state (string filename) throws GLib.Error;
		public void override_option_default (string key, string value);
		public void reset ();
		public void run ();
		public void save_memory (Retro.MemoryType memory_type, string filename) throws GLib.Error;
		public void save_state (string filename) throws GLib.Error;
		public void set_content_directory (string content_directory);
		public void set_controller (uint port, Retro.Controller? controller);
		public void set_current_media (uint media_index) throws GLib.Error;
		public void set_default_controller (Retro.ControllerType controller_type, Retro.Controller? controller);
		public void set_keyboard (Gtk.Widget? widget);
		public void set_medias ([CCode (array_length = false, array_null_terminated = true)] string[] uris);
		public void set_runahead (uint runahead);
		public void set_save_directory (string save_directory);
		public void set_speed_rate (double speed_rate);
		public void set_system_directory (string system_directory);
		public void start ();
		public void stop ();
		public uint api_version { get; }
		public string content_directory { get; set; }
		public string filename { get; construct; }
		public double frames_per_second { get; }
		public bool game_loaded { get; }
		public bool is_initiated { get; }
		public uint runahead { get; set; }
		public string save_directory { get; set; }
		public double speed_rate { get; set; }
		public bool support_no_game { get; }
		public string system_directory { get; set; }
		public signal void audio_output ([CCode (array_length_cname = "length", array_length_pos = 1.5, array_length_type = "gulong")] uint8[] data, double sample_rate);
		public signal void log (string log_domain, GLib.LogLevelFlags log_level, string message);
		public signal void message (string message, uint frames);
		public signal void shutdown ();
		public signal void video_output (Retro.Pixdata pixdata);
	}
	[CCode (cheader_filename = "retro-gtk.h", type_id = "retro_core_descriptor_get_type ()")]
	public class CoreDescriptor : GLib.Object {
		[CCode (has_construct_function = false)]
		public CoreDescriptor (string filename) throws GLib.Error;
		public string? get_firmware_md5 (string firmware) throws GLib.Error;
		public string? get_firmware_path (string firmware) throws GLib.Error;
		public string? get_firmware_sha512 (string firmware) throws GLib.Error;
		[CCode (array_length = true, array_length_pos = 1.1, array_length_type = "gsize", array_null_terminated = true)]
		public string[] get_firmwares (string platform) throws GLib.Error;
		public GLib.Icon? get_icon () throws GLib.Error;
		public string get_id ();
		public bool get_is_emulator () throws GLib.Error;
		public bool get_is_firmware_mandatory (string firmware) throws GLib.Error;
		public bool get_is_game () throws GLib.Error;
		[CCode (array_length = true, array_length_pos = 1.1, array_length_type = "gsize", array_null_terminated = true)]
		public string[] get_mime_type (string platform) throws GLib.Error;
		public string? get_module () throws GLib.Error;
		public GLib.File? get_module_file () throws GLib.Error;
		public string? get_name () throws GLib.Error;
		public bool get_platform_supports_mime_types (string platform, [CCode (array_length = false, array_null_terminated = true)] string[] mime_types) throws GLib.Error;
		public string get_uri ();
		public bool has_firmware_md5 (string firmware) throws GLib.Error;
		public bool has_firmware_sha512 (string firmware) throws GLib.Error;
		public bool has_firmwares (string platform) throws GLib.Error;
		public bool has_icon () throws GLib.Error;
		public bool has_platform (string platform);
	}
	[CCode (cheader_filename = "retro-gtk.h", type_id = "retro_core_view_get_type ()")]
	public class CoreView : Gtk.EventBox, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false)]
		public CoreView ();
		public Retro.Controller as_controller (Retro.ControllerType controller_type);
		public bool get_can_grab_pointer ();
		public uint64 get_controller_capabilities ();
		public int16 get_input_state (Retro.Input input);
		public unowned Retro.KeyJoypadMapping get_key_joypad_mapping ();
		public unowned Gdk.Pixbuf get_pixbuf ();
		public bool get_snap_pointer_to_borders ();
		public void set_as_default_controller (Retro.Core? core);
		public void set_can_grab_pointer (bool can_grab_pointer);
		public void set_core (Retro.Core? core);
		public void set_filter (Retro.VideoFilter filter);
		public void set_key_joypad_mapping (Retro.KeyJoypadMapping? mapping);
		public void set_pixbuf (Gdk.Pixbuf pixbuf);
		public void set_snap_pointer_to_borders (bool snap_pointer_to_borders);
		public bool can_grab_pointer { get; set; }
		public bool snap_pointer_to_borders { get; set; }
		public signal void controller_state_changed ();
	}
	[CCode (cheader_filename = "retro-gtk.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "retro_input_get_type ()")]
	[Compact]
	public class Input {
		[CCode (has_construct_function = false)]
		public Input ();
		public Retro.Input copy ();
		public void free ();
		public bool get_analog (out Retro.AnalogId id, out Retro.AnalogIndex index);
		public Retro.ControllerType get_controller_type ();
		public bool get_joypad (out Retro.JoypadId id);
		public bool get_lightgun (out Retro.LightgunId id);
		public bool get_mouse (out Retro.MouseId id);
		public bool get_pointer (out Retro.PointerId id);
	}
	[CCode (cheader_filename = "retro-gtk.h", type_id = "retro_key_joypad_mapping_get_type ()")]
	public class KeyJoypadMapping : GLib.Object {
		[CCode (has_construct_function = false)]
		public KeyJoypadMapping ();
		[CCode (has_construct_function = false)]
		public KeyJoypadMapping.@default ();
		public uint16 get_button_key (Retro.JoypadId button);
		public void set_button_key (Retro.JoypadId button, uint16 hardware_keycode);
	}
	[CCode (cheader_filename = "retro-gtk.h", type_id = "retro_module_iterator_get_type ()")]
	public class ModuleIterator : GLib.Object {
		[CCode (has_construct_function = false)]
		public ModuleIterator ([CCode (array_length = false, array_null_terminated = true)] string[] lookup_paths, bool recursive);
		public Retro.CoreDescriptor? @get ();
		public bool next ();
	}
	[CCode (cheader_filename = "retro-gtk.h", type_id = "retro_module_query_get_type ()")]
	public class ModuleQuery : GLib.Object {
		[CCode (has_construct_function = false)]
		public ModuleQuery (bool recursive);
		public Retro.ModuleIterator iterator ();
	}
	[CCode (cheader_filename = "retro-gtk.h", type_id = "retro_option_get_type ()")]
	public class Option : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Option ();
		public unowned string get_description ();
		public unowned string get_key ();
		public unowned string get_value ();
		[CCode (array_length = false, array_null_terminated = true)]
		public unowned string[] get_values ();
		public void set_value (string value) throws GLib.Error;
		public signal void value_changed ();
	}
	[CCode (cheader_filename = "retro-gtk.h", type_id = "retro_option_iterator_get_type ()")]
	public class OptionIterator : GLib.Object {
		[CCode (has_construct_function = false)]
		protected OptionIterator ();
		public bool next (out uint key, out Retro.Option? option);
	}
	[CCode (cheader_filename = "retro-gtk.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "retro_pixdata_get_type ()")]
	[Compact]
	public class Pixdata {
		public Retro.Pixdata copy ();
		public void free ();
		public float get_aspect_ratio ();
		public int get_height ();
		public int get_width ();
		public bool load_gl_texture ();
		public Gdk.Pixbuf to_pixbuf ();
	}
	[CCode (cheader_filename = "retro-gtk.h", type_cname = "RetroControllerInterface", type_id = "retro_controller_get_type ()")]
	public interface Controller : GLib.Object {
		public void emit_state_changed ();
		public abstract uint64 get_capabilities ();
		public abstract Retro.ControllerType get_controller_type ();
		public abstract int16 get_input_state (Retro.Input input);
		public abstract bool get_supports_rumble ();
		public bool has_capability (Retro.ControllerType controller_type);
		public abstract void set_rumble_state (Retro.RumbleEffect effect, uint16 strength);
		public signal void state_changed ();
	}
	[CCode (cheader_filename = "retro-gtk.h", cprefix = "RETRO_ANALOG_ID_", type_id = "retro_analog_id_get_type ()")]
	public enum AnalogId {
		X,
		Y,
		COUNT
	}
	[CCode (cheader_filename = "retro-gtk.h", cprefix = "RETRO_ANALOG_INDEX_", type_id = "retro_analog_index_get_type ()")]
	public enum AnalogIndex {
		LEFT,
		RIGHT,
		COUNT
	}
	[CCode (cheader_filename = "retro-gtk.h", cprefix = "RETRO_CONTROLLER_TYPE_", type_id = "retro_controller_type_get_type ()")]
	public enum ControllerType {
		NONE,
		JOYPAD,
		MOUSE,
		KEYBOARD,
		LIGHTGUN,
		ANALOG,
		POINTER,
		COUNT,
		TYPE_MASK
	}
	[CCode (cheader_filename = "retro-gtk.h", cprefix = "RETRO_JOYPAD_ID_", type_id = "retro_joypad_id_get_type ()")]
	public enum JoypadId {
		B,
		Y,
		SELECT,
		START,
		UP,
		DOWN,
		LEFT,
		RIGHT,
		A,
		X,
		L,
		R,
		L2,
		R2,
		L3,
		R3,
		COUNT;
		public static Retro.JoypadId from_button_code (uint16 button_code);
		public uint16 to_button_code ();
	}
	[CCode (cheader_filename = "retro-gtk.h", cprefix = "RETRO_LIGHTGUN_ID_", type_id = "retro_lightgun_id_get_type ()")]
	public enum LightgunId {
		X,
		Y,
		TRIGGER,
		CURSOR,
		TURBO,
		PAUSE,
		START,
		COUNT
	}
	[CCode (cheader_filename = "retro-gtk.h", cprefix = "RETRO_MEMORY_TYPE_", has_type_id = false)]
	public enum MemoryType {
		SAVE_RAM,
		RTC,
		SYSTEM_RAM,
		VIDEO_RAM
	}
	[CCode (cheader_filename = "retro-gtk.h", cprefix = "RETRO_MOUSE_ID_", type_id = "retro_mouse_id_get_type ()")]
	public enum MouseId {
		X,
		Y,
		LEFT,
		RIGHT,
		WHEELUP,
		WHEELDOWN,
		MIDDLE,
		HORIZ_WHEELUP,
		HORIZ_WHEELDOWN,
		COUNT
	}
	[CCode (cheader_filename = "retro-gtk.h", cprefix = "RETRO_POINTER_ID_", type_id = "retro_pointer_id_get_type ()")]
	public enum PointerId {
		X,
		Y,
		PRESSED,
		COUNT
	}
	[CCode (cheader_filename = "retro-gtk.h", cprefix = "RETRO_RUMBLE_EFFECT_", type_id = "retro_rumble_effect_get_type ()")]
	public enum RumbleEffect {
		STRONG,
		WEAK,
		COUNT
	}
	[CCode (cheader_filename = "retro-gtk.h", cprefix = "RETRO_VIDEO_FILTER_", type_id = "retro_video_filter_get_type ()")]
	public enum VideoFilter {
		SMOOTH,
		SHARP,
		CRT,
		COUNT;
		public static Retro.VideoFilter from_string (string filter);
	}
	[CCode (cheader_filename = "retro-gtk.h")]
	public static void g_log (Retro.Core sender, string? log_domain, GLib.LogLevelFlags log_level, string message);
	[CCode (cheader_filename = "retro-gtk.h")]
	public static GLib.Resource gtk_get_resource ();
	[CCode (cheader_filename = "retro-gtk.h")]
	public static float pixbuf_get_aspect_ratio (Gdk.Pixbuf pixbuf);
	[CCode (cheader_filename = "retro-gtk.h")]
	public static void pixbuf_set_aspect_ratio (Gdk.Pixbuf pixbuf, float aspect_ratio);
}