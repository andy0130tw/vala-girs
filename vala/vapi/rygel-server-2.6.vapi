/* rygel-server-2.6.vapi generated by valac 0.26.0.71-c8dec-dirty, do not modify. */

namespace Rygel {
	namespace FreeDesktop {
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class AudioItem : Rygel.MediaItem {
		public const string UPNP_CLASS;
		public AudioItem (string id, Rygel.MediaContainer parent, string title, string upnp_class = AudioItem.UPNP_CLASS);
		public override bool streamable ();
		public string album { get; set; }
		public int bitrate { get; set; }
		public int bits_per_sample { get; set; }
		public int channels { get; set; }
		public long duration { get; set; }
		public int sample_freq { get; set; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class ContentDirectory : GUPnP.Service {
		protected string feature_list;
		public Rygel.MediaContainer root_container;
		public uint32 system_update_id;
		public const string DESCRIPTION_PATH;
		public const string DESCRIPTION_PATH_NO_TRACK;
		public const string UPNP_ID;
		public const string UPNP_TYPE;
		public const string UPNP_TYPE_V1;
		public ContentDirectory ();
		public override void constructed ();
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public abstract class HTTPSeek : GLib.Object {
		public HTTPSeek (Soup.Message msg, int64 start, int64 stop, int64 step, int64 total_length) throws Rygel.HTTPSeekError;
		public abstract void add_response_headers ();
		public int64 length { get; private set; }
		public Soup.Message msg { get; private set; }
		public Rygel.HTTPSeekType seek_type { get; protected set; }
		public int64 start { get; private set; }
		public int64 step { get; private set; }
		public int64 stop { get; private set; }
		public int64 total_length { get; private set; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class HTTPServer : Rygel.TranscodeManager, Rygel.StateMachine {
		public GUPnP.Context context;
		public Rygel.MediaContainer root_container;
		public HTTPServer (Rygel.ContentDirectory content_dir, string name);
		public bool is_local ();
		public bool need_proxy (string uri);
		public string path_root { get; private set; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class ImageItem : Rygel.MediaItem, Rygel.VisualItem {
		public const string UPNP_CLASS;
		public ImageItem (string id, Rygel.MediaContainer parent, string title, string upnp_class = ImageItem.UPNP_CLASS);
		public override void add_uri (string uri);
		public override void constructed ();
		protected override GUPnP.ProtocolInfo get_protocol_info (string? uri, string protocol);
		public override bool streamable ();
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class LogicalExpression : Rygel.SearchExpression<Rygel.LogicalOperator,Rygel.SearchExpression,Rygel.SearchExpression> {
		public LogicalExpression ();
		public override bool satisfied_by (Rygel.MediaObject media_object);
		public override string to_string ();
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class MediaArtStore : GLib.Object {
		public void add (Rygel.MusicItem item, GLib.File file, uint8[] data, string mime);
		public static Rygel.MediaArtStore? get_default ();
		public Rygel.Thumbnail? lookup_media_art (Rygel.MusicItem item) throws GLib.Error;
		public void search_media_art_for_file (Rygel.MusicItem item, GLib.File file);
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public abstract class MediaContainer : Rygel.MediaObject {
		public int64 storage_used;
		public int64 total_deleted_child_count;
		public uint32 update_id;
		public const string ALBUM_SORT_CRITERIA;
		public const string ANY;
		public const string MUSIC_ALBUM;
		public const string MUSIC_ARTIST;
		public const string MUSIC_GENRE;
		public const string PLAYLIST;
		public const string STORAGE_FOLDER;
		public const string UPNP_CLASS;
		public MediaContainer (string id, Rygel.MediaContainer? parent, string title, int child_count);
		public override void constructed ();
		public abstract async Rygel.MediaObject? find_object (string id, GLib.Cancellable? cancellable) throws GLib.Error;
		public abstract async Rygel.MediaObjects? get_children (uint offset, uint max_count, string sort_criteria, GLib.Cancellable? cancellable) throws GLib.Error;
		public MediaContainer.root (string title, int child_count);
		public override GUPnP.DIDLLiteObject? serialize (Rygel.Serializer serializer, Rygel.HTTPServer http_server) throws GLib.Error;
		public void updated (Rygel.MediaObject? object = null, Rygel.ObjectEventType event_type = ObjectEventType.MODIFIED, bool sub_tree_update = false);
		public int all_child_count { get; }
		public int child_count { get; set construct; }
		public bool create_mode_enabled { get; set; }
		protected int empty_child_count { get; set; }
		public override GUPnP.OCMFlags ocm_flags { get; }
		public string sort_criteria { get; set; }
		public signal void container_updated (Rygel.MediaContainer container, Rygel.MediaObject object, Rygel.ObjectEventType event_type, bool sub_tree_update);
		public signal void sub_tree_updates_finished (Rygel.MediaObject sub_tree_root);
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public abstract class MediaEngine : GLib.Object {
		public MediaEngine ();
		public abstract Rygel.DataSource? create_data_source (string uri);
		public static Rygel.MediaEngine get_default ();
		public abstract unowned GLib.List<Rygel.DLNAProfile> get_dlna_profiles ();
		public abstract unowned GLib.List<Rygel.Transcoder>? get_transcoders ();
		public static void init () throws GLib.Error;
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public abstract class MediaItem : Rygel.MediaObject {
		protected static GLib.Regex address_regex;
		public MediaItem (string id, Rygel.MediaContainer parent, string title, string upnp_class);
		protected virtual void add_resources (GUPnP.DIDLLiteItem didl_item, bool allow_internal) throws GLib.Error;
		public virtual Rygel.DataSource? create_stream_source (string? host_ip = null);
		protected virtual GUPnP.ProtocolInfo get_protocol_info (string? uri, string protocol);
		public bool is_live_stream ();
		public abstract bool streamable ();
		public string description { get; set; }
		public string dlna_profile { get; set; }
		public string mime_type { get; set; }
		public override GUPnP.OCMFlags ocm_flags { get; }
		public bool place_holder { get; set; }
		public int64 size { get; set; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public abstract class MediaObject : GLib.Object {
		public weak Rygel.MediaContainer parent_ptr;
		public MediaObject ();
		public virtual void add_uri (string uri);
		protected int compare_int_props (int prop1, int prop2);
		protected int compare_string_props (string prop1, string prop2);
		public override void constructed ();
		public string? get_primary_uri ();
		public Gee.List<string> get_uris ();
		public async GLib.File? get_writable (GLib.Cancellable? cancellable) throws GLib.Error;
		public async Gee.ArrayList<GLib.File> get_writables (GLib.Cancellable? cancellable) throws GLib.Error;
		public abstract GUPnP.DIDLLiteObject? serialize (Rygel.Serializer serializer, Rygel.HTTPServer http_server) throws GLib.Error;
		public string artist { get; set; }
		public string creator { get; set; }
		public string date { get; set; }
		public string genre { get; set; }
		public string id { get; set construct; }
		public uint64 modified { get; set; }
		public uint object_update_id { get; set; }
		public virtual GUPnP.OCMFlags ocm_flags { get; }
		public Rygel.MediaContainer parent { get; set construct; }
		public Rygel.MediaContainer parent_ref { get; set; }
		public string ref_id { get; set; }
		public string title { get; set construct; }
		public string upnp_class { get; set construct; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class MediaObjects : Gee.ArrayList<Rygel.MediaObject> {
		public const string SORT_CAPS;
		public MediaObjects ();
		public override Gee.List<Rygel.MediaObject>? slice (int start, int stop);
		public void sort_by_criteria (string sort_criteria);
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class MediaServer : Rygel.MediaDevice {
		public MediaServer (string title, Rygel.MediaContainer root_container, Rygel.PluginCapabilities capabilities = PluginCapabilities.NONE);
		public override void constructed ();
		public Rygel.MediaContainer root_container { private get; construct; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public abstract class MediaServerPlugin : Rygel.Plugin {
		public MediaServerPlugin (Rygel.MediaContainer root_container, string name, string? description = null, Rygel.PluginCapabilities capabilities = PluginCapabilities.NONE);
		public override void apply_hacks (Rygel.RootDevice device, string description_path) throws GLib.Error;
		public override void constructed ();
		public Rygel.MediaContainer root_container { get; construct; }
		public virtual string search_caps { get; }
		public GLib.List<Rygel.DLNAProfile> supported_profiles { get; set construct; }
		public GLib.List<Rygel.DLNAProfile> upload_profiles { get; set construct; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class MusicItem : Rygel.AudioItem {
		public const string UPNP_CLASS;
		public MusicItem (string id, Rygel.MediaContainer parent, string title, string upnp_class = MusicItem.UPNP_CLASS);
		public void lookup_album_art ();
		public Rygel.Thumbnail album_art { get; set; }
		public int track_number { get; set; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class PhotoItem : Rygel.ImageItem {
		public const string UPNP_CLASS;
		public PhotoItem (string id, Rygel.MediaContainer parent, string title, string upnp_class = PhotoItem.UPNP_CLASS);
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class PlaylistItem : Rygel.MediaItem {
		public const string UPNP_CLASS;
		public PlaylistItem (string id, Rygel.MediaContainer parent, string title, string upnp_class = PlaylistItem.UPNP_CLASS);
		public override bool streamable ();
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class RelationalExpression : Rygel.SearchExpression<GUPnP.SearchCriteriaOp,string,string> {
		public RelationalExpression ();
		public bool compare_int (int integer);
		public bool compare_string (string? str);
		public bool compare_uint (uint integer);
		public override bool satisfied_by (Rygel.MediaObject media_object);
		public override string to_string ();
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public abstract class SearchExpression<G,H,I> {
		public G op;
		public H operand1;
		public I operand2;
		public SearchExpression ();
		public abstract bool satisfied_by (Rygel.MediaObject media_object);
		public abstract string to_string ();
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class Serializer : GLib.Object {
		public Serializer (Rygel.SerializerType type);
		public GUPnP.DIDLLiteContainer? add_container ();
		public GUPnP.DIDLLiteItem? add_item ();
		public override void constructed ();
		public void filter (string filter_string);
		public string get_string ();
		public Rygel.SerializerType serializer_type { private get; construct; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class SimpleContainer : Rygel.MediaContainer, Rygel.SearchableContainer {
		public Rygel.MediaObjects children;
		public SimpleContainer (string id, Rygel.MediaContainer? parent, string title);
		public void add_child_container (Rygel.MediaContainer child);
		public void add_child_item (Rygel.MediaItem child);
		public void clear ();
		public override void constructed ();
		public override async Rygel.MediaObject? find_object (string id, GLib.Cancellable? cancellable) throws GLib.Error;
		protected Rygel.MediaObjects get_all_children ();
		public override async Rygel.MediaObjects? get_children (uint offset, uint max_count, string sort_criteria, GLib.Cancellable? cancellable) throws GLib.Error;
		protected bool is_child_id_unique (string child_id);
		public void remove_child (Rygel.MediaObject child);
		public SimpleContainer.root (string title);
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class Subtitle {
		public string caption_type;
		public string mime_type;
		public int64 size;
		public string uri;
		public Subtitle (string mime_type = "text/plain", string caption_type = "srt");
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class Thumbnail : Rygel.IconInfo {
		public string dlna_profile;
		public Thumbnail (string mime_type = "image/jpeg", string dlna_profile = "JPEG_TN", string file_extension = "jpg");
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public abstract class TranscodeManager : GLib.Object {
		public TranscodeManager ();
		public void add_resources (GUPnP.DIDLLiteItem didl_item, Rygel.MediaItem item) throws GLib.Error;
		public abstract string create_uri_for_item (Rygel.MediaItem item, int thumbnail_index, int subtitle_index, string? transcode_target, string? playlist_target);
		public Rygel.Transcoder get_transcoder (string target) throws GLib.Error;
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public abstract class Transcoder : GLib.Object {
		public Transcoder ();
		public virtual GUPnP.DIDLLiteResource? add_resource (GUPnP.DIDLLiteItem didl_item, Rygel.MediaItem item, Rygel.TranscodeManager manager) throws GLib.Error;
		public bool can_handle (string target);
		public abstract Rygel.DataSource create_source (Rygel.MediaItem item, Rygel.DataSource src) throws GLib.Error;
		public abstract uint get_distance (Rygel.MediaItem item);
		protected bool mime_type_is_a (string mime_type1, string mime_type2);
		public string dlna_profile { get; construct; }
		public string extension { get; construct; }
		public string mime_type { get; construct; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public class VideoItem : Rygel.AudioItem, Rygel.VisualItem {
		public const string UPNP_CLASS;
		public VideoItem (string id, Rygel.MediaContainer parent, string title, string upnp_class = VideoItem.UPNP_CLASS);
		public override void add_uri (string uri);
		public override void constructed ();
		public override bool streamable ();
		public string author { get; set; }
		public Gee.ArrayList<Rygel.Subtitle> subtitles { get; protected set; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public interface DataSource : GLib.Object {
		public abstract void freeze ();
		public abstract void start (Rygel.HTTPSeek? offsets) throws GLib.Error;
		public abstract void stop ();
		public abstract void thaw ();
		public signal void data_available (uint8[] data);
		public signal void done ();
		public signal void error (GLib.Error error);
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public interface SearchableContainer : Rygel.MediaContainer {
		public async Rygel.MediaObject? find_object (string id, GLib.Cancellable? cancellable) throws GLib.Error;
		public abstract async Rygel.MediaObjects? search (Rygel.SearchExpression? expression, uint offset, uint max_count, out uint total_matches, string sort_criteria, GLib.Cancellable? cancellable) throws GLib.Error;
		public async Rygel.MediaObjects? simple_search (Rygel.SearchExpression? expression, uint offset, uint max_count, out uint total_matches, string sort_criteria, GLib.Cancellable? cancellable) throws GLib.Error;
		public abstract Gee.ArrayList<string> search_classes { get; set; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public interface TrackableContainer : Rygel.MediaContainer {
		protected abstract async void add_child (Rygel.MediaObject object);
		public async void add_child_tracked (Rygel.MediaObject object);
		public async void clear ();
		public virtual string get_service_reset_token ();
		public virtual uint32 get_system_update_id ();
		protected abstract async void remove_child (Rygel.MediaObject object);
		public async void remove_child_tracked (Rygel.MediaObject object);
		public virtual void set_service_reset_token (string token);
		protected signal void child_added (Rygel.MediaObject object);
		protected signal void child_removed (Rygel.MediaObject object);
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public interface TrackableItem : Rygel.MediaItem {
		public void changed ();
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public interface UpdatableObject : Rygel.MediaObject {
		public abstract async void commit () throws GLib.Error;
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public interface VisualItem : Rygel.MediaItem {
		public abstract int color_depth { get; set; }
		public abstract int height { get; set; }
		public abstract Gee.ArrayList<Rygel.Thumbnail> thumbnails { get; protected set; }
		public abstract int width { get; set; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public interface WritableContainer : Rygel.MediaContainer {
		public const string WRITABLE_SCHEME;
		public abstract async void add_container (Rygel.MediaContainer container, GLib.Cancellable? cancellable) throws GLib.Error;
		public abstract async void add_item (Rygel.MediaItem item, GLib.Cancellable? cancellable) throws GLib.Error;
		public virtual async string add_reference (Rygel.MediaObject object, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool can_create (string upnp_class);
		public abstract async void remove_container (string id, GLib.Cancellable? cancellable) throws GLib.Error;
		public abstract async void remove_item (string id, GLib.Cancellable? cancellable) throws GLib.Error;
		public abstract Gee.ArrayList<string> create_classes { get; set; }
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public enum HTTPSeekType {
		BYTE,
		TIME
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public enum LogicalOperator {
		AND,
		OR
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public enum ObjectEventType {
		ADDED,
		MODIFIED,
		DELETED
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public enum SerializerType {
		GENERIC_DIDL,
		DIDL_S,
		M3UEXT
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public errordomain DataSourceError {
		GENERAL,
		SEEK_FAILED
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public errordomain HTTPSeekError {
		INVALID_RANGE,
		OUT_OF_RANGE
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public errordomain MediaEngineError {
		NOT_FOUND
	}
	[CCode (cheader_filename = "rygel-server.h")]
	public errordomain WritableContainerError {
		NOT_IMPLEMENTED
	}
}
