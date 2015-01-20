/* libgitg-1.0.vapi generated by valac 0.27.1.3-6129, do not modify. */

[CCode (gir_namespace = "Gitg", gir_version = "1.0")]
namespace Gitg {
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public class Async {
		public delegate void ThreadFunc () throws GLib.Error;
		public Async ();
		public static async void thread (Gitg.Async.ThreadFunc func) throws GLib.Error;
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	[GtkTemplate (ui = "/org/gnome/gitg/ui/gitg-authentication-dialog.ui")]
	public class AuthenticationDialog : Gtk.Dialog {
		public AuthenticationDialog (string url, string? username, bool failed);
		public Gitg.AuthenticationLifeTime life_time { get; }
		public string password { get; }
		public string username { get; }
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public class AvatarCache : GLib.Object {
		public static Gitg.AvatarCache @default ();
		public async Gdk.Pixbuf? load (string email, GLib.Cancellable? cancellable = null);
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public class BranchBase : Ggit.Branch, Gitg.Ref, Gitg.Branch {
		public BranchBase ();
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public class CellRendererLanes : Gtk.CellRendererText {
		public CellRendererLanes ();
		public override void get_preferred_width (Gtk.Widget widget, out int minimum_width, out int natural_width);
		public Gitg.Ref? get_ref_at_pos (Gtk.Widget widget, int x, int cell_w, out int hot_x);
		public override void render (Cairo.Context context, Gtk.Widget widget, Gdk.Rectangle area, Gdk.Rectangle cell_area, Gtk.CellRendererState flags);
		public Gitg.Commit? commit { get; set; }
		public uint dot_width { get; set; }
		public GLib.SList<Gitg.Ref> labels { get; set; }
		public uint lane_width { get; set; }
		public Gitg.Commit? next_commit { get; set; }
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public class Color : GLib.Object {
		public uint idx;
		public Color ();
		public void components (out double r, out double g, out double b);
		public Gitg.Color copy ();
		public static Gitg.Color next ();
		public Gitg.Color next_index ();
		public static void reset ();
		public double b { get; }
		public double g { get; }
		public double r { get; }
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public class Commit : Ggit.Commit {
		public Commit ();
		public Ggit.Diff get_diff (Ggit.DiffOptions? options, int parent);
		public unowned GLib.SList<Gitg.Lane> get_lanes ();
		public Ggit.Note get_note ();
		public unowned GLib.SList<Gitg.Lane> insert_lane (Gitg.Lane lane, int idx);
		public unowned GLib.SList<Gitg.Lane> remove_lane (Gitg.Lane lane);
		public void update_lanes (owned GLib.SList<Gitg.Lane> lanes, int mylane);
		public string author_date_for_display { owned get; }
		public string committer_date_for_display { owned get; }
		public string format_patch_name { owned get; }
		public Gitg.Lane lane { get; }
		public uint mylane { get; set; }
		public Gitg.LaneTag tag { get; set; }
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public class CommitListView : Gtk.TreeView, Gtk.Buildable {
		public CommitListView (Gitg.CommitModel model);
		public Gtk.CellRenderer? find_cell_at_pos (Gtk.TreeViewColumn column, Gtk.TreePath path, int x, out int width);
		public CommitListView.for_repository (Gitg.Repository repository);
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public class CommitModel : GLib.Object, Gtk.TreeModel {
		public CommitModel (Gitg.Repository? repository);
		public Gitg.Commit? commit_from_iter (Gtk.TreeIter iter);
		public Gitg.Commit? commit_from_path (Gtk.TreePath path);
		public override void dispose ();
		public new Gitg.Commit? @get (uint idx);
		public Gtk.TreePath? path_from_commit (Gitg.Commit commit);
		public void reload ();
		public void set_exclude (Ggit.OId[] ids);
		public void set_include (Ggit.OId[] ids);
		public uint size ();
		public uint limit { get; set; }
		public Ggit.OId[] permanent_lanes { get; set; }
		[Notify]
		public Gitg.Repository repository { get; set; }
		public Ggit.SortMode sort_mode { get; set; }
		public signal void finished ();
		public signal void started ();
		public signal void update (uint added);
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public class CredentialsManager {
		public CredentialsManager (Gitg.Remote remote, Gtk.Window window);
		public Ggit.Cred? credentials (string url, string? username, Ggit.Credtype allowed_types) throws GLib.Error;
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public class Date : GLib.Object, GLib.Initable {
		public Date (string date) throws GLib.Error;
		public Date.for_date_time (GLib.DateTime dt);
		public string for_display ();
		public static GLib.DateTime parse (string date) throws GLib.Error;
		public GLib.DateTime date { get; }
		public string date_string { get; set construct; }
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public class DiffStat : Gtk.DrawingArea {
		public DiffStat ();
		protected override bool draw (Cairo.Context context);
		protected override void get_preferred_height (out int minimum_height, out int natural_height);
		protected override void get_preferred_width (out int minimum_width, out int natural_width);
		protected override void style_updated ();
		public uint added { get; set; }
		public uint removed { get; set; }
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public class DiffView : WebKit.WebView {
		public DiffView ();
		protected override void constructed ();
		protected override bool context_menu (WebKit.ContextMenu menu, Gdk.Event event, WebKit.HitTestResult hit_test_result);
		public async Gitg.PatchSet[] get_selection ();
		public void load_parent (string id);
		public void loaded ();
		public void request (Gitg.DiffViewRequest request);
		public void select_parent (string id);
		public void update_has_selection (bool hs);
		public bool changes_inline { get; set; }
		public Gitg.Commit? commit { get; set; }
		public int context_lines { get; set construct; }
		public GLib.File? custom_css { get; construct; }
		public GLib.File? custom_js { get; construct; }
		public Ggit.Diff? diff { get; set; }
		[Notify]
		public bool has_selection { get; }
		public bool ignore_whitespace { get; set; }
		public Ggit.DiffOptions options { get; }
		public bool show_parents { get; set; }
		public bool staged { get; set; }
		public int tab_width { get; set construct; }
		public bool unstaged { get; set; }
		public bool wrap { get; set; }
		public virtual signal void options_changed ();
		public signal void request_select_commit (string id);
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	[GtkTemplate (ui = "/org/gnome/gitg/ui/diff-view/diff-view-options.ui")]
	public class DiffViewOptions : Gtk.Grid {
		public DiffViewOptions (Gitg.DiffView view);
		protected override void constructed ();
		public bool changes_inline { get; set; }
		public int context_lines { get; set; }
		public bool ignore_whitespace { get; set; }
		public int tab_width { get; set; }
		public Gitg.DiffView view { get; set construct; }
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public class DiffViewRequest {
		protected bool d_hasView;
		protected string? d_mimetype;
		protected WebKit.URISchemeRequest d_request;
		protected int64 d_size;
		protected Soup.URI d_uri;
		protected Gitg.DiffView? d_view;
		public DiffViewRequest (Gitg.DiffView? view, WebKit.URISchemeRequest request, Soup.URI uri);
		public void finish_empty ();
		public virtual int64 get_content_length ();
		public virtual string get_content_type ();
		public string? parameter (string v);
		public void run (GLib.Cancellable? cancellable);
		protected virtual GLib.InputStream? run_async (GLib.Cancellable? cancellable) throws GLib.Error;
		public bool has_view { get; }
		public Soup.URI uri { get; }
		public Gitg.DiffView? view { get; }
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public class Hook : GLib.Object {
		public Hook (string name);
		public void add_argument (string arg);
		public bool exists_in (Ggit.Repository repository);
		public async int run (Ggit.Repository repository) throws GLib.SpawnError;
		public int run_sync (Ggit.Repository repository) throws GLib.SpawnError;
		public Gee.HashMap<string,string> environment { get; set; }
		public string name { get; set; }
		public string[] output { owned get; }
		public GLib.File? working_directory { get; set; }
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public class LabelRenderer {
		public LabelRenderer ();
		public static void draw (Gtk.Widget widget, Pango.FontDescription font, Cairo.Context context, GLib.SList<Gitg.Ref> labels, Gdk.Rectangle area);
		public static Gitg.Ref? get_ref_at_pos (Gtk.Widget widget, Pango.FontDescription font, GLib.SList<Gitg.Ref> labels, int x, out int hot_x);
		public static Gdk.Pixbuf render_ref (Gtk.Widget widget, Pango.FontDescription font, Gitg.Ref r, int height, int minwidth);
		public static int width (Gtk.Widget widget, Pango.FontDescription* font, GLib.SList<Gitg.Ref> labels);
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public class Lane : GLib.Object {
		public Ggit.OId? boundary_id;
		public Gitg.Color color;
		public GLib.SList<int> from;
		public Gitg.LaneTag tag;
		public Lane ();
		public Gitg.Lane copy ();
		public Gitg.Lane dup ();
		public Lane.with_color (Gitg.Color? color);
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public class Lanes : GLib.Object {
		public Lanes ();
		public bool next (Gitg.Commit next, out GLib.SList<Gitg.Lane> lanes, out int nextpos);
		public void reset (Ggit.OId[]? reserved = null, Gee.HashSet<Ggit.OId>? roots = null);
		public int inactive_collapse { get; set; }
		public bool inactive_enabled { get; set; }
		public int inactive_gap { get; set; }
		public int inactive_max { get; set; }
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public class ParsedRefName : GLib.Object {
		public ParsedRefName (string name);
		public string name { owned get; }
		public string? prefix { get; }
		public string? remote_branch { owned get; }
		public string? remote_name { owned get; }
		public Gitg.RefType rtype { get; private set; }
		public string shortname { owned get; }
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public class PatchSet {
		public struct Patch {
			public Gitg.PatchSet.Type type;
			public size_t old_offset;
			public size_t new_offset;
			public size_t length;
		}
		public enum Type {
			ADD,
			REMOVE
		}
		public string filename;
		public Gitg.PatchSet.Patch[] patches;
		public PatchSet ();
		public Gitg.PatchSet reversed ();
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public class ProgressBin : Gtk.Bin {
		public ProgressBin ();
		public override bool draw (Cairo.Context cr);
		public override void realize ();
		public override void size_allocate (Gtk.Allocation allocation);
		public double fraction { get; set; }
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public class RefBase : Ggit.Ref, Gitg.Ref {
		public RefBase ();
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public class Remote : Ggit.Remote {
		public Remote ();
		public new async void connect (Ggit.Direction direction) throws GLib.Error;
		public new async void disconnect () throws GLib.Error;
		public new async void download () throws GLib.Error;
		public new async void fetch (Ggit.Signature signature, string? message) throws GLib.Error;
		public GLib.Error authentication_error { get; }
		public Gitg.RemoteState state { get; private set; }
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	[GtkTemplate (ui = "/org/gnome/gitg/ui/gitg-remote-notification.ui")]
	public class RemoteNotification : Gitg.ProgressBin {
		public RemoteNotification (Gitg.Remote remote);
		public void error (string text);
		public void success (string text);
		public Gitg.RemoteState remote_state { set; }
		public string text { get; set; }
		public signal void cancel ();
		public signal void close ();
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public class Repository : Ggit.Repository {
		public Repository (GLib.File location, GLib.File? workdir) throws GLib.Error;
		public void clear_refs_cache ();
		public new Gitg.Ref create_reference (string name, Ggit.OId oid, Ggit.Signature signature, string message) throws GLib.Error;
		public new Gitg.Ref create_symbolic_reference (string name, string target, Ggit.Signature signature, string message) throws GLib.Error;
		public new Gitg.Ref get_head () throws GLib.Error;
		public Ggit.Signature get_signature_with_environment (Gee.Map<string,string> env, string envname = "COMMITER") throws GLib.Error;
		public new T lookup<T> (Ggit.OId id) throws GLib.Error;
		public new Gitg.Ref lookup_reference (string name) throws GLib.Error;
		public unowned GLib.SList<Gitg.Ref> refs_for_id (Ggit.OId id);
		public string? name { owned get; }
		public Gitg.Stage stage { owned get; }
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public class RepositoryListBox : Gtk.ListBox {
		[GtkTemplate (ui = "/org/gnome/gitg/ui/gitg-repository-list-box-row.ui")]
		public class Row : Gtk.ListBoxRow {
			public Row (string name, string branch_name, bool has_remote);
			public void add_submodule (Ggit.Submodule module);
			public string? branch_name { get; set; }
			public bool can_remove { get; set; }
			public double fraction { set; }
			public bool has_remote { get; set; }
			public bool loading { get; set; }
			public Gitg.SelectionMode mode { get; set; }
			public Gitg.Repository? repository { get; set; }
			public string? repository_name { get; set; }
			[Notify]
			public bool selected { get; set; }
			public GLib.DateTime time { get; set; }
			public signal void request_remove ();
		}
		public RepositoryListBox ();
		public void add_repository (Gitg.Repository repository);
		protected override bool button_press_event (Gdk.EventButton event);
		public void clone_repository (string url, GLib.File location, bool is_bare);
		public void filter_text (string? text);
		protected override void row_activated (Gtk.ListBoxRow row);
		public bool has_selection { get; }
		[Notify]
		public Gitg.SelectionMode mode { get; set; }
		public Gitg.RepositoryListBox.Row[] selection { owned get; }
		public signal void repository_activated (Gitg.Repository repository);
		public signal void show_error (string primary_message, string secondary_message);
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	[GtkTemplate (ui = "/org/gnome/gitg/ui/gitg-sidebar.ui")]
	public class Sidebar : Gtk.TreeView {
		public Sidebar ();
		protected override bool button_press_event (Gdk.EventButton event);
		public T get_selected_item<T> ();
		public T[] get_selected_items<T> ();
		protected bool get_selected_iter (out Gtk.TreeIter iter);
		protected override bool popup_menu ();
		protected override void row_activated (Gtk.TreePath path, Gtk.TreeViewColumn column);
		public void select (Gitg.SidebarItem item);
		protected virtual bool select_function (Gtk.TreeSelection sel, Gtk.TreeModel model, Gtk.TreePath path, bool cursel);
		protected virtual void selection_changed (Gtk.TreeSelection sel);
		public Gitg.SidebarStore model { get; set; }
		public signal void deselected ();
		public signal void populate_popup (Gtk.Menu menu);
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public class SidebarStore : Gtk.TreeStore {
		public class SidebarHeader : Gitg.SidebarStore.SidebarText {
			public SidebarHeader (string text, uint id);
			public uint id { get; }
		}
		protected class SidebarText : GLib.Object, Gitg.SidebarItem {
			public SidebarText (string text);
		}
		public SidebarStore ();
		public void activate (Gtk.TreeIter iter, int numclick);
		public new Gitg.SidebarStore append (Gitg.SidebarItem item);
		public Gitg.SidebarStore append_dummy (string text);
		public Gitg.SidebarStore.SidebarHeader begin_header (string text, uint id = 0);
		public uint begin_section ();
		public new void clear ();
		public Gitg.SidebarStore end_header ();
		public void end_section ();
		public Gitg.SidebarItem item_for_iter (Gtk.TreeIter iter);
		public bool clearing { get; }
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public class Stage : GLib.Object {
		public async Ggit.OId? commit (string message, Ggit.Signature author, Ggit.Signature committer, Gitg.StageCommitOptions options) throws GLib.Error;
		public async void @delete (GLib.File file) throws GLib.Error;
		public async void delete_path (string path) throws GLib.Error;
		public async Ggit.Diff? diff_index (Gitg.StageStatusItem f, Ggit.DiffOptions? defopts = null) throws GLib.Error;
		public async Ggit.Diff? diff_index_all (Gitg.StageStatusItem[]? files, Ggit.DiffOptions? defopts = null) throws GLib.Error;
		public async Ggit.Diff? diff_workdir (Gitg.StageStatusItem f, Ggit.DiffOptions? defopts = null) throws GLib.Error;
		public async Ggit.Diff? diff_workdir_all (Gitg.StageStatusItem[] files, Ggit.DiffOptions? defopts = null) throws GLib.Error;
		public Gitg.StageStatusEnumerator file_status (Ggit.StatusOptions? options = null);
		public async Ggit.Tree? get_head_tree () throws GLib.Error;
		public async void pre_commit_hook (Ggit.Signature author) throws Gitg.StageError;
		public async void refresh () throws GLib.Error;
		public async void revert (GLib.File file) throws GLib.Error;
		public async void revert_patch (Gitg.PatchSet patch) throws GLib.Error;
		public async void revert_path (string path) throws GLib.Error;
		public async void stage (GLib.File file) throws GLib.Error;
		public async void stage_commit (string path, Ggit.Commit commit) throws GLib.Error;
		public async void stage_patch (Gitg.PatchSet patch) throws GLib.Error;
		public async void stage_path (string path) throws GLib.Error;
		public async void unstage (GLib.File file) throws GLib.Error;
		public async void unstage_patch (Gitg.PatchSet patch) throws GLib.Error;
		public async void unstage_path (string path) throws GLib.Error;
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public class StageStatusEnumerator : GLib.Object {
		public void cancel ();
		public async Gitg.StageStatusItem[] next_items (int num);
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public class StageStatusFile : GLib.Object, Gitg.StageStatusItem {
		public StageStatusFile (string path, Ggit.StatusFlags flags);
		public Ggit.StatusFlags flags { get; }
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public class StageStatusSubmodule : GLib.Object, Gitg.StageStatusItem {
		public StageStatusSubmodule (Ggit.Submodule submodule);
		public Ggit.SubmoduleStatus flags { get; }
		public bool is_dirty { get; }
		public Ggit.Submodule submodule { get; }
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public class WhenMapped {
		public delegate void OnMapped ();
		public WhenMapped (Gtk.Widget widget);
		public void update (owned Gitg.WhenMapped.OnMapped mapped, GLib.Object? lifetime = null);
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public interface Branch : Ggit.Branch, Gitg.Ref {
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public interface Ref : Ggit.Ref {
		public abstract new Gitg.Repository get_owner ();
		protected abstract Gitg.ParsedRefName d_parsed_name { get; set; }
		protected abstract GLib.List<Gitg.Ref>? d_pushes { get; owned set; }
		public Gitg.ParsedRefName parsed_name { owned get; }
		public GLib.List<Gitg.Ref> pushes { get; }
		public abstract Gitg.RefState state { get; set; }
		public abstract bool working { get; set; }
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public interface SidebarItem : GLib.Object {
		public virtual void activate (int numclick);
		public abstract string? icon_name { owned get; }
		public abstract string text { owned get; }
		public signal void activated (int numclick);
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public interface StageStatusItem : GLib.Object {
		public abstract string? icon_name { owned get; }
		public abstract bool is_staged { get; }
		public abstract bool is_unstaged { get; }
		public abstract bool is_untracked { get; }
		public abstract string path { owned get; }
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public enum AuthenticationLifeTime {
		FORGET,
		SESSION,
		FOREVER
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public enum CommitModelColumns {
		SHA1,
		SUBJECT,
		MESSAGE,
		AUTHOR,
		AUTHOR_NAME,
		AUTHOR_EMAIL,
		AUTHOR_DATE,
		COMMITTER,
		COMMITTER_NAME,
		COMMITTER_EMAIL,
		COMMITTER_DATE,
		COMMIT,
		NUM;
		public GLib.Type type ();
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	[Flags]
	public enum LaneTag {
		NONE,
		START,
		END,
		SIGN_STASH,
		SIGN_STAGED,
		SIGN_UNSTAGED,
		HIDDEN
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public enum RefState {
		NONE,
		SELECTED,
		PRELIGHT
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public enum RefType {
		NONE,
		BRANCH,
		REMOTE,
		TAG,
		STASH
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public enum RemoteState {
		DISCONNECTED,
		CONNECTING,
		CONNECTED,
		TRANSFERRING
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public enum SelectionMode {
		NORMAL,
		SELECTION
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public enum SidebarColumn {
		HINT,
		SECTION,
		ITEM
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public enum SidebarHint {
		NONE,
		HEADER,
		SEPARATOR,
		DUMMY
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	[Flags]
	public enum StageCommitOptions {
		NONE,
		SIGN_OFF,
		AMEND,
		SKIP_HOOKS
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public errordomain CredentialsError {
		CANCELLED
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public errordomain DateError {
		INVALID_FORMAT
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public errordomain DiffViewRequestIconError {
		ICON_NOT_FOUND
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public errordomain InitError {
		THREADS_UNSAFE
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public errordomain RemoteError {
		ALREADY_CONNECTED,
		ALREADY_CONNECTING,
		ALREADY_DISCONNECTED,
		STILL_CONNECTING
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public errordomain StageError {
		PRE_COMMIT_HOOK_FAILED,
		COMMIT_MSG_HOOK_FAILED,
		NOTHING_TO_COMMIT,
		INDEX_ENTRY_NOT_FOUND
	}
	[CCode (cheader_filename = "libgitg/libgitg.h")]
	public static void init () throws GLib.Error;
}
