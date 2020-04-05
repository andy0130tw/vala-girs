/* librsvg-2.0.vapi generated by vapigen-0.50, do not modify. */

[CCode (cprefix = "Rsvg", gir_namespace = "Rsvg", gir_version = "2.0", lower_case_cprefix = "rsvg_")]
namespace Rsvg {
	namespace Version {
		[CCode (cheader_filename = "librsvg/rsvg.h", cname = "LIBRSVG_MAJOR_VERSION")]
		public const int MAJOR;
		[CCode (cheader_filename = "librsvg/rsvg.h", cname = "LIBRSVG_MICRO_VERSION")]
		public const int MICRO;
		[CCode (cheader_filename = "librsvg/rsvg.h", cname = "LIBRSVG_MINOR_VERSION")]
		public const int MINOR;
		[CCode (cheader_filename = "librsvg/rsvg.h", cname = "LIBRSVG_VERSION")]
		public const string STRING;
		[CCode (cheader_filename = "librsvg/rsvg.h", cname = "LIBRSVG_CHECK_VERSION")]
		public static bool check (int major, int minor, int micro);
	}
	[CCode (cheader_filename = "librsvg/rsvg.h", type_id = "rsvg_handle_get_type ()")]
	public class Handle : GLib.Object {
		[CCode (has_construct_function = false)]
		public Handle ();
		[Version (deprecated = true, deprecated_since = "2.46.")]
		public bool close () throws GLib.Error;
		[Version (deprecated = true, deprecated_since = "2.13.90", replacement = "GLib.Object.unref")]
		public void free ();
		[CCode (has_construct_function = false)]
		[Version (since = "2.14")]
		public Handle.from_data ([CCode (array_length_cname = "data_len", array_length_pos = 1.1, array_length_type = "gsize")] uint8[] data) throws GLib.Error;
		[CCode (has_construct_function = false)]
		[Version (since = "2.14")]
		public Handle.from_file (string filename) throws GLib.Error;
		[CCode (has_construct_function = false)]
		[Version (since = "2.32")]
		public Handle.from_gfile_sync (GLib.File file, Rsvg.HandleFlags flags, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[CCode (has_construct_function = false)]
		[Version (since = "2.32")]
		public Handle.from_stream_sync (GLib.InputStream input_stream, GLib.File? base_file, Rsvg.HandleFlags flags, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[Version (since = "2.8")]
		public unowned string get_base_uri ();
		[Version (deprecated = true, deprecated_since = "2.36", replacement = "")]
		public unowned string get_desc ();
		[Version (since = "2.14")]
		public Rsvg.DimensionData get_dimensions ();
		[Version (deprecated = true, deprecated_since = "2.46.", since = "2.22")]
		public bool get_dimensions_sub (out Rsvg.DimensionData dimension_data, string? id);
		[Version (since = "2.46")]
		public bool get_geometry_for_element (string? id, out Rsvg.Rectangle out_ink_rect, out Rsvg.Rectangle out_logical_rect) throws GLib.Error;
		[Version (since = "2.46")]
		public bool get_geometry_for_layer (string? id, Rsvg.Rectangle viewport, out Rsvg.Rectangle out_ink_rect, out Rsvg.Rectangle out_logical_rect) throws GLib.Error;
		[Version (since = "2.46")]
		public void get_intrinsic_dimensions (out bool out_has_width, out Rsvg.Length out_width, out bool out_has_height, out Rsvg.Length out_height, out bool out_has_viewbox, out Rsvg.Rectangle out_viewbox);
		[Version (deprecated = true, deprecated_since = "2.36", replacement = "")]
		public unowned string get_metadata ();
		public Gdk.Pixbuf? get_pixbuf ();
		[Version (since = "2.14")]
		public Gdk.Pixbuf? get_pixbuf_sub (string? id);
		[Version (deprecated = true, deprecated_since = "2.46.", since = "2.22")]
		public bool get_position_sub (out Rsvg.PositionData position_data, string? id);
		[Version (deprecated = true, deprecated_since = "2.36", replacement = "")]
		public unowned string get_title ();
		[Version (since = "2.22")]
		public bool has_sub (string id);
		public void internal_set_testing (bool testing);
		[Version (since = "2.32")]
		public bool read_stream_sync (GLib.InputStream stream, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[Version (since = "2.14")]
		public bool render_cairo (Cairo.Context cr);
		[Version (since = "2.14")]
		public bool render_cairo_sub (Cairo.Context cr, string? id);
		[Version (since = "2.46")]
		public bool render_document (Cairo.Context cr, Rsvg.Rectangle viewport) throws GLib.Error;
		[Version (since = "2.46")]
		public bool render_element (Cairo.Context cr, string? id, Rsvg.Rectangle element_viewport) throws GLib.Error;
		[Version (since = "2.46")]
		public bool render_layer (Cairo.Context cr, string? id, Rsvg.Rectangle viewport) throws GLib.Error;
		[Version (since = "2.32")]
		public void set_base_gfile (GLib.File base_file);
		[Version (since = "2.9")]
		public void set_base_uri (string base_uri);
		[Version (since = "2.8")]
		public void set_dpi (double dpi);
		[Version (since = "2.8")]
		public void set_dpi_x_y (double dpi_x, double dpi_y);
		[Version (deprecated = true, deprecated_since = "2.13.90", replacement = "render_cairo")]
		public void set_size_callback (owned Rsvg.SizeFunc size_func);
		[Version (since = "2.48")]
		public bool set_stylesheet ([CCode (array_length_cname = "css_len", array_length_pos = 1.1, array_length_type = "gsize")] string[] css) throws GLib.Error;
		[CCode (has_construct_function = false)]
		[Version (since = "2.36")]
		public Handle.with_flags (Rsvg.HandleFlags flags);
		[Version (deprecated = true, deprecated_since = "2.46.")]
		public bool write ([CCode (array_length_cname = "count", array_length_pos = 1.1, array_length_type = "gsize")] uint8[] buf) throws GLib.Error;
		public string base_uri { get; set construct; }
		[NoAccessorMethod]
		[Version (deprecated = true, deprecated_since = "2.36.")]
		public string desc { owned get; }
		[NoAccessorMethod]
		public double dpi_x { get; set construct; }
		[NoAccessorMethod]
		public double dpi_y { get; set construct; }
		[NoAccessorMethod]
		[Version (deprecated = true, deprecated_since = "2.46.")]
		public double em { get; }
		[NoAccessorMethod]
		[Version (deprecated = true, deprecated_since = "2.46.")]
		public double ex { get; }
		[NoAccessorMethod]
		[Version (since = "2.36")]
		public Rsvg.HandleFlags flags { get; construct; }
		[NoAccessorMethod]
		[Version (deprecated = true, deprecated_since = "2.46.")]
		public int height { get; }
		[NoAccessorMethod]
		[Version (deprecated = true, deprecated_since = "2.36.")]
		public string metadata { owned get; }
		[NoAccessorMethod]
		[Version (deprecated = true, deprecated_since = "2.36.")]
		public string title { owned get; }
		[NoAccessorMethod]
		[Version (deprecated = true, deprecated_since = "2.46.")]
		public int width { get; }
	}
	[CCode (cheader_filename = "librsvg/rsvg.h", has_type_id = false)]
	[Version (deprecated = true, deprecated_since = "2.46.")]
	public struct DimensionData {
		public int width;
		public int height;
		public double em;
		public double ex;
	}
	[CCode (cheader_filename = "librsvg/rsvg.h", has_type_id = false)]
	public struct Length {
		public double length;
		public Rsvg.Unit unit;
	}
	[CCode (cheader_filename = "librsvg/rsvg.h", has_type_id = false)]
	[Version (deprecated = true, deprecated_since = "2.46.")]
	public struct PositionData {
		public int x;
		public int y;
	}
	[CCode (cheader_filename = "librsvg/rsvg.h", has_type_id = false)]
	[Version (since = "2.46")]
	public struct Rectangle {
		public double x;
		public double y;
		public double width;
		public double height;
	}
	[CCode (cheader_filename = "librsvg/rsvg.h", cprefix = "RSVG_HANDLE_", type_id = "rsvg_handle_flags_get_type ()")]
	[Flags]
	public enum HandleFlags {
		FLAGS_NONE,
		FLAG_UNLIMITED,
		FLAG_KEEP_IMAGE_DATA
	}
	[CCode (cheader_filename = "librsvg/rsvg.h", cprefix = "RSVG_UNIT_", has_type_id = false)]
	public enum Unit {
		PERCENT,
		PX,
		EM,
		EX,
		IN,
		CM,
		MM,
		PT,
		PC
	}
	[CCode (cheader_filename = "librsvg/rsvg.h", cprefix = "RSVG_ERROR_")]
	public errordomain Error {
		FAILED;
		public static GLib.Quark quark ();
	}
	[CCode (cheader_filename = "librsvg/rsvg.h")]
	[Version (deprecated = true, deprecated_since = "2.13.90", replacement = "render_cairo")]
	public delegate void SizeFunc (ref int width, ref int height);
	[CCode (cheader_filename = "librsvg/rsvg.h")]
	[Version (deprecated = true, deprecated_since = "2.46", since = "2.36")]
	public static void cleanup ();
	[CCode (cheader_filename = "librsvg/rsvg.h")]
	[Version (deprecated = true, deprecated_since = "2.36", replacement = "")]
	public static void init ();
	[CCode (cheader_filename = "librsvg/rsvg.h")]
	[Version (deprecated = true, deprecated_since = "2.35.0", replacement = "")]
	public static Gdk.Pixbuf pixbuf_from_file (string file_name) throws GLib.Error;
	[CCode (cheader_filename = "librsvg/rsvg.h")]
	[Version (deprecated = true, deprecated_since = "2.35.0", replacement = "")]
	public static Gdk.Pixbuf pixbuf_from_file_at_max_size (string file_name, int max_width, int max_height) throws GLib.Error;
	[CCode (cheader_filename = "librsvg/rsvg.h")]
	[Version (deprecated = true, deprecated_since = "2.35.0", replacement = "")]
	public static Gdk.Pixbuf pixbuf_from_file_at_size (string file_name, int width, int height) throws GLib.Error;
	[CCode (cheader_filename = "librsvg/rsvg.h")]
	[Version (deprecated = true, deprecated_since = "2.35.0", replacement = "")]
	public static Gdk.Pixbuf pixbuf_from_file_at_zoom (string file_name, double x_zoom, double y_zoom) throws GLib.Error;
	[CCode (cheader_filename = "librsvg/rsvg.h")]
	[Version (deprecated = true, deprecated_since = "2.35.0", replacement = "")]
	public static Gdk.Pixbuf pixbuf_from_file_at_zoom_with_max (string file_name, double x_zoom, double y_zoom, int max_width, int max_height) throws GLib.Error;
	[CCode (cheader_filename = "librsvg/rsvg.h")]
	[Version (deprecated = true, deprecated_since = "2.42.3", since = "2.8")]
	public static void set_default_dpi (double dpi);
	[CCode (cheader_filename = "librsvg/rsvg.h")]
	[Version (deprecated = true, deprecated_since = "2.42.3", since = "2.8")]
	public static void set_default_dpi_x_y (double dpi_x, double dpi_y);
	[CCode (cheader_filename = "librsvg/rsvg.h")]
	[Version (deprecated = true, deprecated_since = "2.35.0", replacement = "")]
	public static void term ();
}
