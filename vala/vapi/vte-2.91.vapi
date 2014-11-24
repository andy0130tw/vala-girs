/* vte-2.91.vapi generated by vapigen-0.28, do not modify. */

[CCode (cprefix = "Vte", gir_namespace = "Vte", gir_version = "2.91", lower_case_cprefix = "vte_")]
namespace Vte {
	[CCode (cheader_filename = "vte/vte.h", type_id = "vte_pty_get_type ()")]
	public class Pty : GLib.Object, GLib.Initable {
		[CCode (has_construct_function = false)]
		protected Pty ();
		public void child_setup ();
		public void close ();
		[CCode (has_construct_function = false)]
		public Pty.foreign_sync (owned int fd, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public int get_fd ();
		public bool get_size (out int rows, out int columns) throws GLib.Error;
		public bool set_size (int rows, int columns) throws GLib.Error;
		public bool set_utf8 (bool utf8) throws GLib.Error;
		[CCode (has_construct_function = false)]
		public Pty.sync (Vte.PtyFlags flags, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public int fd { get; construct; }
		[NoAccessorMethod]
		public Vte.PtyFlags flags { get; construct; }
	}
	[CCode (cheader_filename = "vte/vte.h", type_id = "vte_terminal_get_type ()")]
	public class Terminal : Gtk.Widget, Atk.Implementor, Gtk.Buildable, Gtk.Scrollable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public Terminal ();
		public void copy_primary ();
		public void feed ([CCode (array_length_cname = "length", array_length_pos = 1.1, array_length_type = "gssize")] uint8[] data);
		public void feed_child (string text, ssize_t length);
		public void feed_child_binary (uint8 data, size_t length);
		public bool get_allow_bold ();
		public bool get_audible_bell ();
		public long get_char_height ();
		public long get_char_width ();
		public int get_cjk_ambiguous_width ();
		public long get_column_count ();
		public unowned string get_current_directory_uri ();
		public unowned string get_current_file_uri ();
		public Vte.CursorBlinkMode get_cursor_blink_mode ();
		public void get_cursor_position (out long column, out long row);
		public Vte.CursorShape get_cursor_shape ();
		public unowned string get_encoding ();
		public unowned Pango.FontDescription get_font ();
		public double get_font_scale ();
		public void get_geometry_hints (out Gdk.Geometry hints, int min_rows, int min_columns);
		public bool get_has_selection ();
		public unowned string get_icon_title ();
		public bool get_input_enabled ();
		public bool get_mouse_autohide ();
		public unowned Vte.Pty get_pty ();
		public bool get_rewrap_on_resize ();
		public long get_row_count ();
		public string get_text ([CCode (delegate_target_pos = 1.5)] Vte.SelectionFunc? is_selected, out GLib.Array<Vte.CharAttributes> attributes);
		public string get_text_include_trailing_spaces ([CCode (delegate_target_pos = 1.5)] Vte.SelectionFunc? is_selected, out GLib.Array<Vte.CharAttributes> attributes);
		public string get_text_range (long start_row, long start_col, long end_row, long end_col, [CCode (delegate_target_pos = 5.5)] Vte.SelectionFunc? is_selected, out GLib.Array<Vte.CharAttributes> attributes);
		public unowned string get_window_title ();
		public int match_add_gregex (GLib.Regex regex, GLib.RegexMatchFlags flags);
		public string match_check (long column, long row, out int tag);
		public string match_check_event (Gdk.Event event, out int tag);
		public void match_remove (int tag);
		public void match_remove_all ();
		[Deprecated (since = "0.40")]
		public void match_set_cursor (int tag, Gdk.Cursor? cursor);
		public void match_set_cursor_name (int tag, string cursor_name);
		public void match_set_cursor_type (int tag, Gdk.CursorType cursor_type);
		public void paste_primary ();
		public Vte.Pty pty_new_sync (Vte.PtyFlags flags, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public void reset (bool clear_tabstops, bool clear_history);
		public bool search_find_next ();
		public bool search_find_previous ();
		public unowned GLib.Regex search_get_gregex ();
		public bool search_get_wrap_around ();
		public void search_set_gregex (GLib.Regex? regex, GLib.RegexMatchFlags flags);
		public void search_set_wrap_around (bool wrap_around);
		public void select_all ();
		public void set_allow_bold (bool allow_bold);
		public void set_audible_bell (bool is_audible);
		public void set_backspace_binding (Vte.EraseBinding binding);
		public void set_cjk_ambiguous_width (int width);
		public void set_color_background (Gdk.RGBA background);
		public void set_color_bold (Gdk.RGBA? bold);
		public void set_color_cursor (Gdk.RGBA? cursor_background);
		public void set_color_foreground (Gdk.RGBA foreground);
		public void set_color_highlight (Gdk.RGBA? highlight_background);
		public void set_color_highlight_foreground (Gdk.RGBA? highlight_foreground);
		public void set_colors (Gdk.RGBA? foreground, Gdk.RGBA? background, [CCode (array_length_cname = "palette_size", array_length_pos = 3.1, array_length_type = "gsize")] Gdk.RGBA[]? palette);
		public void set_cursor_blink_mode (Vte.CursorBlinkMode mode);
		public void set_cursor_shape (Vte.CursorShape shape);
		public void set_default_colors ();
		public void set_delete_binding (Vte.EraseBinding binding);
		public bool set_encoding (string? codeset) throws GLib.Error;
		public void set_font (Pango.FontDescription? font_desc);
		public void set_font_scale (double scale);
		public void set_geometry_hints_for_window (Gtk.Window window);
		public void set_input_enabled (bool enabled);
		public void set_mouse_autohide (bool setting);
		public void set_pty (Vte.Pty? pty);
		public void set_rewrap_on_resize (bool rewrap);
		public void set_scroll_on_keystroke (bool scroll);
		public void set_scroll_on_output (bool scroll);
		public void set_scrollback_lines (long lines);
		public void set_size (long columns, long rows);
		public bool spawn_sync (Vte.PtyFlags pty_flags, string? working_directory, [CCode (array_length = false, array_null_terminated = true)] string[] argv, [CCode (array_length = false, array_null_terminated = true)] string[]? envv, GLib.SpawnFlags spawn_flags, [CCode (delegate_target_pos = 6.5)] GLib.SpawnChildSetupFunc? child_setup, out GLib.Pid child_pid, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public void unselect_all ();
		public void watch_child (GLib.Pid child_pid);
		public bool write_contents_sync (GLib.OutputStream stream, Vte.WriteFlags flags, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public bool allow_bold { get; set; }
		public bool audible_bell { get; set; }
		[NoAccessorMethod]
		public Vte.EraseBinding backspace_binding { get; set; }
		public int cjk_ambiguous_width { get; set; }
		public string current_directory_uri { get; }
		public string current_file_uri { get; }
		public Vte.CursorBlinkMode cursor_blink_mode { get; set; }
		public Vte.CursorShape cursor_shape { get; set; }
		[NoAccessorMethod]
		public Vte.EraseBinding delete_binding { get; set; }
		[NoAccessorMethod]
		public string encoding { owned get; set; }
		[NoAccessorMethod]
		public Pango.FontDescription font_desc { owned get; set; }
		public double font_scale { get; set; }
		public string icon_title { get; }
		public bool input_enabled { get; set; }
		[NoAccessorMethod]
		public bool pointer_autohide { get; set; }
		public Vte.Pty pty { get; set; }
		public bool rewrap_on_resize { get; set; }
		[NoAccessorMethod]
		public bool scroll_on_keystroke { get; set; }
		[NoAccessorMethod]
		public bool scroll_on_output { get; set; }
		[NoAccessorMethod]
		public uint scrollback_lines { get; set; }
		public string window_title { get; }
		public virtual signal void bell ();
		public virtual signal void char_size_changed (uint char_width, uint char_height);
		public virtual signal void child_exited (int status);
		public virtual signal void commit (string text, uint size);
		public virtual signal void contents_changed ();
		[HasEmitter]
		public virtual signal void copy_clipboard ();
		public signal void current_directory_uri_changed ();
		public signal void current_file_uri_changed ();
		public virtual signal void cursor_moved ();
		public virtual signal void decrease_font_size ();
		public virtual signal void deiconify_window ();
		public virtual signal void encoding_changed ();
		public virtual signal void eof ();
		public virtual signal void icon_title_changed ();
		public virtual signal void iconify_window ();
		public virtual signal void increase_font_size ();
		public virtual signal void lower_window ();
		public virtual signal void maximize_window ();
		public virtual signal void move_window (uint x, uint y);
		[HasEmitter]
		public virtual signal void paste_clipboard ();
		public virtual signal void raise_window ();
		public virtual signal void refresh_window ();
		public virtual signal void resize_window (uint width, uint height);
		public virtual signal void restore_window ();
		public virtual signal void selection_changed ();
		public virtual signal void text_deleted ();
		public virtual signal void text_inserted ();
		public virtual signal void text_modified ();
		public virtual signal void text_scrolled (int delta);
		public virtual signal void window_title_changed ();
	}
	[CCode (cheader_filename = "vte/vte.h", has_type_id = false)]
	public struct CharAttributes {
	}
	[CCode (cheader_filename = "vte/vte.h", cprefix = "VTE_CURSOR_BLINK_", type_id = "vte_cursor_blink_mode_get_type ()")]
	public enum CursorBlinkMode {
		SYSTEM,
		ON,
		OFF
	}
	[CCode (cheader_filename = "vte/vte.h", cprefix = "VTE_CURSOR_SHAPE_", type_id = "vte_cursor_shape_get_type ()")]
	public enum CursorShape {
		BLOCK,
		IBEAM,
		UNDERLINE
	}
	[CCode (cheader_filename = "vte/vte.h", cprefix = "VTE_ERASE_", type_id = "vte_erase_binding_get_type ()")]
	public enum EraseBinding {
		AUTO,
		ASCII_BACKSPACE,
		ASCII_DELETE,
		DELETE_SEQUENCE,
		TTY
	}
	[CCode (cheader_filename = "vte/vte.h", cprefix = "VTE_PTY_", type_id = "vte_pty_flags_get_type ()")]
	[Flags]
	public enum PtyFlags {
		NO_LASTLOG,
		NO_UTMP,
		NO_WTMP,
		NO_HELPER,
		NO_FALLBACK,
		DEFAULT
	}
	[CCode (cheader_filename = "vte/vte.h", cprefix = "VTE_WRITE_", type_id = "vte_write_flags_get_type ()")]
	public enum WriteFlags {
		DEFAULT
	}
	[CCode (cheader_filename = "vte/vte.h", cprefix = "VTE_PTY_ERROR_")]
	public errordomain PtyError {
		PTY_HELPER_FAILED,
		PTY98_FAILED;
		public static GLib.Quark quark ();
	}
	[CCode (cheader_filename = "vte/vte.h", instance_pos = 3.9)]
	public delegate bool SelectionFunc (Vte.Terminal terminal, long column, long row);
	[CCode (cheader_filename = "vte/vte.h", cname = "VTE_MAJOR_VERSION")]
	public const int MAJOR_VERSION;
	[CCode (cheader_filename = "vte/vte.h", cname = "VTE_MICRO_VERSION")]
	public const int MICRO_VERSION;
	[CCode (cheader_filename = "vte/vte.h", cname = "VTE_MINOR_VERSION")]
	public const int MINOR_VERSION;
	[CCode (cheader_filename = "vte/vte.h", cname = "VTE_SPAWN_NO_PARENT_ENVV")]
	public const int SPAWN_NO_PARENT_ENVV;
	[CCode (cheader_filename = "vte/vte.h")]
	public static uint get_major_version ();
	[CCode (cheader_filename = "vte/vte.h")]
	public static uint get_micro_version ();
	[CCode (cheader_filename = "vte/vte.h")]
	public static uint get_minor_version ();
	[CCode (cheader_filename = "vte/vte.h")]
	public static string get_user_shell ();
}
