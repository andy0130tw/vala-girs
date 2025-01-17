/* unity-protocol.vapi generated by valac 0.47.3, do not modify. */

namespace Unity {
	namespace Protocol {
		[CCode (cheader_filename = "unity-protocol.h")]
		public class AnnotatedIcon : GLib.Object, GLib.Icon {
			public AnnotatedIcon (GLib.Icon? base_icon);
			public void add_hint (string name, GLib.Variant value);
			public unowned GLib.Variant? get_hint (string name);
			public void set_colorize_rgba (double r, double g, double b, double a);
			public Unity.Protocol.CategoryType category { get; set; }
			public uint32 colorize_value { get; set; }
			public GLib.Icon icon { get; set; }
			public string ribbon { get; set; }
			public bool use_small_icon { get; set; }
		}
		[CCode (cheader_filename = "unity-protocol.h")]
		public class ApplicationPreview : Unity.Protocol.Preview {
			public ApplicationPreview ();
			public GLib.Icon app_icon { get; set; }
			public string copyright { get; set; }
			public string last_update { get; set; }
			public string license { get; set; }
			public uint num_ratings { get; set; }
			public float rating { get; set; }
		}
		[CCode (cheader_filename = "unity-protocol.h")]
		public class CategoryDefinition {
			public CategoryDefinition ();
			public string? content_type { get; private set; }
			public string? dedup_field { get; private set; }
			public string icon { get; private set; }
			public string id { get; private set; }
			public string name { get; private set; }
			public string? renderer { get; private set; }
			public string? renderer_hint { get; set; }
			public string? sort_field { get; private set; }
		}
		[CCode (cheader_filename = "unity-protocol.h")]
		public class FilterDefinition {
			public FilterDefinition ();
			public void add_option (string id, string name);
			public unowned string[] get_option_ids ();
			public unowned string[] get_option_names ();
			public string filter_type { get; private set; }
			public string id { get; private set; }
			public string name { get; private set; }
			public string? sort_type { get; private set; }
		}
		[CCode (cheader_filename = "unity-protocol.h")]
		public class GenericPreview : Unity.Protocol.Preview {
			public GenericPreview ();
		}
		[CCode (cheader_filename = "unity-protocol.h")]
		public class MetaDataColumnInfo {
			public MetaDataColumnInfo (string v) throws GLib.Error;
			public virtual bool equals (Unity.Protocol.MetaDataColumnInfo m);
			public string name { get; internal set; }
			public string type_id { get; internal set; }
		}
		[CCode (cheader_filename = "unity-protocol.h")]
		public class MetaDataSchemaInfo {
			public GLib.GenericArray<Unity.Protocol.MetaDataColumnInfo> columns;
			public MetaDataSchemaInfo ();
			public GLib.HashTable<string,string> as_hash_table ();
			public bool equals (Unity.Protocol.MetaDataSchemaInfo s);
			public static Unity.Protocol.MetaDataSchemaInfo from_string (string mdinfo_str) throws GLib.Error;
		}
		[CCode (cheader_filename = "unity-protocol.h")]
		public class MoviePreview : Unity.Protocol.Preview {
			public MoviePreview ();
			public uint num_ratings { get; set; }
			public float rating { get; set; }
			public string year { get; set; }
		}
		[CCode (cheader_filename = "unity-protocol.h")]
		public class MusicPreview : Unity.Protocol.Preview {
			public MusicPreview ();
			public string track_data_address { get; set; }
			public string track_data_swarm_name { get; set; }
			public Dee.SerializableModel track_model { get; set; }
		}
		[CCode (cheader_filename = "unity-protocol.h")]
		public class PaymentPreview : Unity.Protocol.Preview {
			public PaymentPreview ();
			public string email { get; set; }
			public string header { get; set; }
			public string payment_method { get; set; }
			public Unity.Protocol.PreviewPaymentType preview_type { get; set; }
			public string purchase_prize { get; set; }
			public string purchase_type { get; set; }
		}
		[CCode (cheader_filename = "unity-protocol.h")]
		public abstract class Preview : GLib.Object, Dee.Serializable {
			protected Preview ();
			public void add_action (string id, string display_name, GLib.Icon? icon, uint layout_hint);
			public void add_action_with_hints (string id, string display_name, GLib.Icon? icon, uint layout_hint, owned GLib.HashTable<string,GLib.Variant> hints);
			public void add_info_hint (string id, string display_name, GLib.Icon? icon_hint, GLib.Variant value);
			public virtual void begin_updates ();
			public virtual GLib.Variant? end_updates ();
			public virtual GLib.HashTable<string,GLib.Variant>? end_updates_as_hashtable ();
			public unowned Unity.Protocol.PreviewActionRaw[] get_actions ();
			public unowned Unity.Protocol.InfoHintRaw[] get_info_hints ();
			public bool get_no_details ();
			public abstract unowned string get_renderer_name ();
			public static Unity.Protocol.Preview? parse (GLib.Variant data);
			public void preview_closed ();
			public void set_no_details (bool val);
			public virtual void update_property (GLib.HashTable<string,GLib.Variant> properties);
			public string description { get; set; }
			public GLib.Icon? image { get; set; }
			public string image_source_uri { get; set; }
			public string subtitle { get; set; }
			public string title { get; set; }
		}
		[CCode (cheader_filename = "unity-protocol.h")]
		public class PreviewPlayer : GLib.Object {
			public PreviewPlayer ();
			public async void close () throws GLib.Error;
			public async void pause () throws GLib.Error;
			public async void pause_resume () throws GLib.Error;
			public async void play (string uri) throws GLib.Error;
			public async void resume () throws GLib.Error;
			public async void stop () throws GLib.Error;
			public async GLib.HashTable<string,GLib.Variant> video_properties (string uri) throws GLib.Error;
			public signal void progress (string uri, Unity.Protocol.PlayState state, double progress);
		}
		[CCode (cheader_filename = "unity-protocol.h")]
		public class ScopeGroupConfig {
			public GLib.List<Unity.Protocol.ScopeGroupScopeInfo?> scopes;
			public int timeout;
			public ScopeGroupConfig (string file_name) throws GLib.Error;
		}
		[CCode (cheader_filename = "unity-protocol.h")]
		public class ScopeRegistry {
			public class ScopeMetadata {
				public string category_icon;
				public string dbus_name;
				public string dbus_path;
				public string description;
				public string domain;
				public string full_path;
				public bool global_searches;
				public string icon;
				public string id;
				public bool is_master;
				public GLib.SList<string> keywords;
				public string module;
				public string module_type;
				public string name;
				public string no_content_hint;
				public bool no_export;
				public Unity.Protocol.MetaDataSchemaInfo? optional_metadata;
				public string query_binary;
				public string query_pattern;
				public bool remote_content;
				public Unity.Protocol.MetaDataSchemaInfo? required_metadata;
				public string search_hint;
				public string shortcut;
				public int timeout;
				public string type;
				public bool visible;
				public ScopeMetadata ();
				public static Unity.Protocol.ScopeRegistry.ScopeMetadata for_id (string scope_id) throws GLib.Error;
				public static Unity.Protocol.ScopeRegistry.ScopeMetadata for_path (string path) throws GLib.Error;
				public unowned Unity.Protocol.CategoryDefinition[] get_categories ();
				public unowned Unity.Protocol.FilterDefinition[] get_filters ();
				public unowned string[] get_subscope_ids ();
				public void load_from_key_file (GLib.KeyFile file) throws GLib.Error;
			}
			public class ScopeRegistryNode {
				public Unity.Protocol.ScopeRegistry.ScopeMetadata scope_info;
				public GLib.SList<Unity.Protocol.ScopeRegistry.ScopeMetadata?>? sub_scopes;
				public ScopeRegistryNode ();
			}
			public static async Unity.Protocol.ScopeRegistry find_scopes (string? start_path) throws GLib.Error;
			public static async Unity.Protocol.ScopeRegistry find_scopes_for_id (string scope_id, string? root_path = null) throws GLib.Error;
			public GLib.SList<Unity.Protocol.ScopeRegistry.ScopeRegistryNode>? scopes { get; }
		}
		[CCode (cheader_filename = "unity-protocol.h")]
		public class SeriesPreview : Unity.Protocol.Preview {
			public SeriesPreview ();
			public void add_series_item (string title, string uri, GLib.Icon? icon);
			public override void begin_updates ();
			public override GLib.HashTable<string,GLib.Variant>? end_updates_as_hashtable ();
			public unowned Unity.Protocol.SeriesItemRaw[] get_items ();
			public override void update_property (GLib.HashTable<string,GLib.Variant> properties);
			public Unity.Protocol.Preview child_preview { get; set; }
			public int selected_item { get; set; }
		}
		[CCode (cheader_filename = "unity-protocol.h")]
		public class SocialPreview : Unity.Protocol.Preview {
			public struct CommentRaw {
				public string id;
				public string display_name;
				public string content;
				public string time;
			}
			public Unity.Protocol.SocialPreview.CommentRaw[] comments;
			public SocialPreview ();
			public void add_comment (string id, string display_name, string content, string time);
			public unowned Unity.Protocol.SocialPreview.CommentRaw[] get_comments ();
			public GLib.Icon avatar { get; set; }
			public string content { get; set; }
			public string sender { get; set; }
		}
		[CCode (cheader_filename = "unity-protocol.h")]
		public interface ScopeProxy : GLib.Object {
			public abstract async Unity.Protocol.ActivationReplyRaw activate (string channel_id, GLib.Variant[] result_arr, Unity.Protocol.ActionType action_type, GLib.HashTable<string,GLib.Variant> hints, GLib.Cancellable? cancellable = null) throws GLib.Error;
			public abstract async void close_channel (string channel_id, GLib.Cancellable? cancellable = null) throws GLib.Error;
			public static async Unity.Protocol.ScopeProxy new_for_id (string id, GLib.Cancellable? cancellable = null) throws GLib.Error;
			public static async Unity.Protocol.ScopeProxy new_from_dbus (string dbus_name, string dbus_path, GLib.Cancellable? cancellable = null) throws GLib.Error;
			public static async Unity.Protocol.ScopeProxy new_from_metadata (Unity.Protocol.ScopeRegistry.ScopeMetadata metadata, GLib.Cancellable? cancellable = null) throws GLib.Error;
			public abstract async string open_channel (Unity.Protocol.ChannelType channel_type, Unity.Protocol.ChannelFlags channel_flags, GLib.Cancellable? cancellable = null, out Dee.SerializableModel results_model) throws GLib.Error;
			public abstract async GLib.HashTable<string,GLib.Variant> push_results (string channel_id, string search_string, string source_scope_id, Dee.SerializableModel model, string[] categories, GLib.Cancellable? cancellable = null) throws GLib.Error;
			public abstract async GLib.HashTable<string,GLib.Variant> search (string channel_id, string search_string, GLib.HashTable<string,GLib.Variant> hints, GLib.Cancellable? cancellable = null) throws GLib.Error;
			public abstract async void set_active_sources (string channel_id, string[] sources, GLib.Cancellable? cancellable = null) throws GLib.Error;
			public abstract Dee.SerializableModel categories_model { get; }
			public abstract bool connected { get; }
			public abstract Dee.SerializableModel filters_model { get; }
			public abstract bool is_master { get; }
			public abstract GLib.HashTable<string,string> metadata { get; }
			public abstract GLib.HashTable<string,string> optional_metadata { get; }
			public abstract string search_hint { get; }
			public abstract GLib.Variant sources { get; }
			public abstract Unity.Protocol.ViewType view_type { get; set; }
			public abstract bool visible { get; }
			public signal void category_order_changed (string channel_id, uint32[] new_order);
			public signal void channels_invalidated ();
			public signal void filter_settings_changed (string channel_id, GLib.Variant filter_rows);
			public signal void results_invalidated (Unity.Protocol.ChannelType channel_type);
		}
		[CCode (cheader_filename = "unity-protocol.h")]
		[DBus (name = "com.canonical.Unity.Scope")]
		public interface ScopeService : GLib.Object {
			public const string INTERFACE_NAME;
			public abstract async Unity.Protocol.ActivationReplyRaw activate (string channel_id, GLib.Variant[] result_arr, uint action_type, GLib.HashTable<string,GLib.Variant> hints, GLib.Cancellable? cancellable = null) throws GLib.IOError, Unity.Protocol.ScopeError;
			public abstract async void close_channel (string channel_id, GLib.HashTable<string,GLib.Variant> hints, GLib.Cancellable? cancellable = null) throws GLib.IOError, Unity.Protocol.ScopeError;
			public abstract async string open_channel (uint channel_type, GLib.HashTable<string,GLib.Variant> hints, GLib.Cancellable? cancellable = null, GLib.BusName? sender = null, out GLib.HashTable<string,GLib.Variant> out_hints) throws GLib.IOError;
			public abstract async GLib.HashTable<string,GLib.Variant> push_results (string channel_id, string search_string, string source_scope_id, GLib.Variant result_variant, string[] categories, GLib.Cancellable? cancellable = null) throws GLib.IOError, Unity.Protocol.ScopeError;
			public abstract async GLib.HashTable<string,GLib.Variant> search (string channel_id, string search_string, GLib.HashTable<string,GLib.Variant> hints, GLib.Cancellable? cancellable = null) throws GLib.IOError, Unity.Protocol.ScopeError;
			public abstract async void set_view_type (uint view_type) throws GLib.IOError;
			public abstract GLib.Variant categories { owned get; }
			public abstract GLib.Variant filters { owned get; }
			public abstract GLib.HashTable<string,GLib.Variant> hints { owned get; }
			public abstract bool is_master { get; }
			public abstract GLib.HashTable<string,string> metadata { owned get; }
			public abstract GLib.HashTable<string,string> optional_metadata { owned get; }
			public abstract int protocol_version { get; }
			public abstract string search_hint { owned get; }
			public abstract bool visible { get; }
			public signal void category_order_changed (string channel_id, uint32[] new_order);
			public signal void filter_settings_changed (string channel_id, [DBus (signature = "a(ssssa{sv}bbb)")] GLib.Variant filter_rows);
			public signal void results_invalidated (uint channel_type);
		}
		[CCode (cheader_filename = "unity-protocol.h")]
		public struct ActivationReplyRaw {
			public string uri;
			public uint handled;
			public GLib.HashTable<string,GLib.Variant> hints;
		}
		[CCode (cheader_filename = "unity-protocol.h")]
		public struct InfoHintRaw {
			public string id;
			public string display_name;
			public string icon_hint;
			public GLib.Variant value;
		}
		[CCode (cheader_filename = "unity-protocol.h")]
		public struct PreviewActionRaw {
			public string id;
			public string display_name;
			public string icon_hint;
			public uint layout_hint;
			public GLib.HashTable<string,GLib.Variant> hints;
			public PreviewActionRaw ();
			public static Unity.Protocol.PreviewActionRaw? from_variant (GLib.Variant v);
			public GLib.Variant to_variant ();
		}
		[CCode (cheader_filename = "unity-protocol.h")]
		public struct ScopeGroupScopeInfo {
			public string scope_id;
			public string dbus_name;
			public string dbus_path;
			public string module;
			public string module_type;
		}
		[CCode (cheader_filename = "unity-protocol.h")]
		public struct SeriesItemRaw {
			public string uri;
			public string title;
			public string icon_hint;
		}
		[CCode (cheader_filename = "unity-protocol.h")]
		public enum ActionType {
			ACTIVATE_RESULT,
			PREVIEW_RESULT,
			PREVIEW_ACTION,
			PREVIEW_BUILTIN_ACTION
		}
		[CCode (cheader_filename = "unity-protocol.h")]
		public enum CategoryType {
			NONE,
			APPLICATION,
			BOOK,
			MUSIC,
			MOVIE,
			GAMES,
			ELECTRONICS,
			COMPUTERS,
			OFFICE,
			HOME,
			GARDEN,
			PETS,
			TOYS,
			CHILDREN,
			BABY,
			CLOTHES,
			SHOES,
			WATCHES,
			SPORTS,
			OUTDOORS,
			GROCERY,
			HEALTH,
			BEAUTY,
			DIY,
			TOOLS,
			CAR,
			N_CATEGORIES
		}
		[CCode (cheader_filename = "unity-protocol.h")]
		[Flags]
		public enum ChannelFlags {
			NONE,
			PRIVATE,
			NO_FILTERING,
			DIFF_CHANGES;
			public static Unity.Protocol.ChannelFlags from_hints (GLib.HashTable<string,GLib.Variant> hints);
		}
		[CCode (cheader_filename = "unity-protocol.h")]
		public enum ChannelType {
			DEFAULT,
			GLOBAL
		}
		[CCode (cheader_filename = "unity-protocol.h")]
		public enum HandledType {
			NOT_HANDLED,
			SHOW_DASH,
			HIDE_DASH,
			GOTO_DASH_URI,
			SHOW_PREVIEW,
			PERFORM_SEARCH
		}
		[CCode (cheader_filename = "unity-protocol.h")]
		public enum LayoutHint {
			NONE,
			LEFT,
			RIGHT,
			TOP,
			BOTTOM
		}
		[CCode (cheader_filename = "unity-protocol.h")]
		public enum PlayState {
			STOPPED,
			PLAYING,
			PAUSED
		}
		[CCode (cheader_filename = "unity-protocol.h")]
		public enum PreviewPaymentType {
			APPLICATION,
			MUSIC,
			ERROR
		}
		[CCode (cheader_filename = "unity-protocol.h")]
		public enum ViewType {
			HIDDEN,
			HOME_VIEW,
			LENS_VIEW
		}
		[CCode (cheader_filename = "unity-protocol.h")]
		[DBus (name = "com.canonical.Unity.ScopeError")]
		public errordomain ScopeError {
			REQUEST_FAILED,
			DATA_MISMATCH,
			INVALID_CHANNEL,
			SEARCH_CANCELLED,
			DISABLED_CONTENT,
			UNKNOWN
		}
		[CCode (cheader_filename = "unity-protocol.h")]
		public const string CHANNEL_DIFF_MODEL_HINT;
		[CCode (cheader_filename = "unity-protocol.h")]
		public const string CHANNEL_PRIVATE_HINT;
		[CCode (cheader_filename = "unity-protocol.h")]
		public const string CHANNEL_SWARM_NAME_HINT;
	}
}
