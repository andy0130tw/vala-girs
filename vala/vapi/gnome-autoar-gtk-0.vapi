/* gnome-autoar-gtk-0.vapi generated by vapigen-0.50, do not modify. */

[CCode (cprefix = "AutoarGtk", gir_namespace = "GnomeAutoarGtk", gir_version = "0.1", lower_case_cprefix = "autoar_gtk_")]
namespace AutoarGtk {
	[CCode (cheader_filename = "gnome-autoar/autoar-gtk.h")]
	public static bool chooser_advanced_get (Gtk.Widget advanced, int format, int filter);
	[CCode (cheader_filename = "gnome-autoar/autoar-gtk.h")]
	public static Gtk.Widget chooser_advanced_new (Autoar.Format default_format, Autoar.Filter default_filter);
	[CCode (cheader_filename = "gnome-autoar/autoar-gtk.h")]
	public static bool chooser_simple_get (Gtk.Widget simple, int format, int filter);
	[CCode (cheader_filename = "gnome-autoar/autoar-gtk.h")]
	public static Gtk.Widget chooser_simple_new (Autoar.Format default_format, Autoar.Filter default_filter);
}
