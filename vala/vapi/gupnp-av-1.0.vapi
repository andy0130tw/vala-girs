/* gupnp-av-1.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "GUPnP", gir_namespace = "GUPnPAV", gir_version = "1.0", lower_case_cprefix = "gupnp_")]
namespace GUPnP {
	[CCode (cheader_filename = "libgupnp-av/gupnp-av.h", ref_function = "gupnp_cds_last_change_entry_ref", type_id = "gupnp_cds_last_change_entry_get_type ()", unref_function = "gupnp_cds_last_change_entry_unref")]
	[Compact]
	public class CDSLastChangeEntry {
		public unowned string get_class ();
		public GUPnP.CDSLastChangeEvent get_event ();
		public unowned string get_object_id ();
		public unowned string get_parent_id ();
		public uint32 get_update_id ();
		public bool is_subtree_update ();
		public GUPnP.CDSLastChangeEntry @ref ();
		public void unref ();
	}
	[CCode (cheader_filename = "libgupnp-av/gupnp-av.h", type_id = "gupnp_cds_last_change_parser_get_type ()")]
	public class CDSLastChangeParser : GLib.Object {
		[CCode (has_construct_function = false)]
		public CDSLastChangeParser ();
		public GLib.List<GUPnP.CDSLastChangeEntry> parse (string last_change) throws GLib.Error;
	}
	[CCode (cheader_filename = "libgupnp-av/gupnp-av.h", type_id = "gupnp_didl_lite_container_get_type ()")]
	public class DIDLLiteContainer : GUPnP.DIDLLiteObject {
		[CCode (has_construct_function = false)]
		protected DIDLLiteContainer ();
		public void add_create_class (string create_class);
		public void add_create_class_full (string create_class, bool include_derived);
		public void add_search_class (string search_class);
		public void add_search_class_full (string search_class, bool include_derived);
		public bool container_update_id_is_set ();
		public int get_child_count ();
		public uint get_container_update_id ();
		public GLib.List<string> get_create_classes ();
		public GLib.List<GUPnP.DIDLLiteCreateClass> get_create_classes_full ();
		public GLib.List<string> get_search_classes ();
		public bool get_searchable ();
		public int64 get_storage_used ();
		public uint get_total_deleted_child_count ();
		public void set_child_count (int child_count);
		public void set_container_update_id (uint update_id);
		public void set_searchable (bool searchable);
		public void set_storage_used (int64 storage_used);
		public void set_total_deleted_child_count (uint count);
		public bool total_deleted_child_count_is_set ();
		public void unset_container_update_id ();
		public void unset_total_deleted_child_count ();
		public int child_count { get; set; }
		public uint container_update_id { get; set; }
		public bool searchable { get; set; }
		public int64 storage_used { get; set; }
		public uint total_deleted_child_count { get; set; }
	}
	[CCode (cheader_filename = "libgupnp-av/gupnp-av.h", type_id = "gupnp_didl_lite_contributor_get_type ()")]
	public class DIDLLiteContributor : GLib.Object {
		[CCode (has_construct_function = false)]
		protected DIDLLiteContributor ();
		public unowned string get_name ();
		public unowned string get_role ();
		public unowned Xml.Node get_xml_node ();
		public void set_name (string name);
		public void set_role (string role);
		public string name { get; set; }
		public string role { get; set; }
		public Xml.Node* xml_node { get; construct; }
	}
	[CCode (cheader_filename = "libgupnp-av/gupnp-av.h", type_id = "gupnp_didl_lite_create_class_get_type ()")]
	public class DIDLLiteCreateClass : GLib.Object {
		[CCode (has_construct_function = false)]
		protected DIDLLiteCreateClass ();
		public unowned string get_content ();
		public unowned string get_friendly_name ();
		public bool get_include_derived ();
		public unowned Xml.Node get_xml_node ();
		public void set_content (string content);
		public void set_friendly_name (string friendly_name);
		public void set_include_derived (bool include_derived);
		public string content { get; set; }
		public string friendly_name { get; set; }
		public bool include_derived { get; set; }
		public Xml.Node* xml_node { get; construct; }
	}
	[CCode (cheader_filename = "libgupnp-av/gupnp-av.h", type_id = "gupnp_didl_lite_descriptor_get_type ()")]
	public class DIDLLiteDescriptor : GLib.Object {
		[CCode (has_construct_function = false)]
		public DIDLLiteDescriptor ();
		public unowned string get_content ();
		public unowned string get_id ();
		public unowned string get_metadata_type ();
		public unowned string get_name_space ();
		public unowned Xml.Node get_xml_node ();
		public void set_content (string content);
		public void set_id (string id);
		public void set_metadata_type (string type);
		public void set_name_space (string name_space);
		public string content { get; set; }
		public string id { get; set; }
		public string metadata_type { get; set; }
		public string name_space { get; set; }
		public Xml.Node* xml_node { get; construct; }
	}
	[CCode (cheader_filename = "libgupnp-av/gupnp-av.h", type_id = "gupnp_didl_lite_item_get_type ()")]
	public class DIDLLiteItem : GUPnP.DIDLLiteObject {
		[CCode (has_construct_function = false)]
		protected DIDLLiteItem ();
		public long get_lifetime ();
		public unowned string get_ref_id ();
		public void set_lifetime (long lifetime);
		public void set_ref_id (string ref_id);
		public long lifetime { get; set; }
		public string ref_id { get; set; }
	}
	[CCode (cheader_filename = "libgupnp-av/gupnp-av.h", type_id = "gupnp_didl_lite_object_get_type ()")]
	public abstract class DIDLLiteObject : GLib.Object {
		[CCode (has_construct_function = false)]
		protected DIDLLiteObject ();
		public GUPnP.DIDLLiteContributor add_artist ();
		public GUPnP.DIDLLiteContributor add_author ();
		public GUPnP.DIDLLiteContributor add_creator ();
		public GUPnP.DIDLLiteDescriptor add_descriptor ();
		public GUPnP.DIDLLiteResource add_resource ();
		public GUPnP.DIDLLiteFragmentResult apply_fragments ([CCode (array_length_cname = "current_size", array_length_pos = 1.5)] string[] current_fragments, [CCode (array_length_cname = "new_size", array_length_pos = 2.1)] string[] new_fragments);
		public unowned string get_album ();
		public unowned string get_album_art ();
		public string get_album_xml_string ();
		[Version (deprecated = true, deprecated_since = "0.5.3")]
		public unowned string get_artist ();
		public GLib.List<GUPnP.DIDLLiteContributor> get_artists ();
		public string get_artists_xml_string ();
		[Version (deprecated = true, deprecated_since = "0.5.3")]
		public unowned string get_author ();
		public GLib.List<GUPnP.DIDLLiteContributor> get_authors ();
		public GUPnP.DIDLLiteResource get_compat_resource (string sink_protocol_info, bool lenient);
		public unowned string get_creator ();
		public GLib.List<GUPnP.DIDLLiteContributor> get_creators ();
		public unowned string get_date ();
		public string get_date_xml_string ();
		public Xml.Ns* get_dc_namespace ();
		public unowned string get_description ();
		public GLib.List<GUPnP.DIDLLiteDescriptor> get_descriptors ();
		public GUPnP.OCMFlags get_dlna_managed ();
		public Xml.Ns* get_dlna_namespace ();
		public unowned string get_genre ();
		public unowned string get_id ();
		public unowned string get_parent_id ();
		public GLib.List<weak Xml.Node> get_properties (string name);
		public Xml.Ns* get_pv_namespace ();
		public GLib.List<GUPnP.DIDLLiteResource> get_resources ();
		public bool get_restricted ();
		public unowned string get_title ();
		public string get_title_xml_string ();
		public int get_track_number ();
		public string get_track_number_xml_string ();
		public uint get_update_id ();
		public unowned string get_upnp_class ();
		public string get_upnp_class_xml_string ();
		public Xml.Ns* get_upnp_namespace ();
		public unowned string get_write_status ();
		public unowned Xml.Node get_xml_node ();
		public string get_xml_string ();
		public bool is_restricted_set ();
		public void set_album (string album);
		public void set_album_art (string album_art);
		[Version (deprecated = true, deprecated_since = "0.5.3")]
		public void set_artist (string artist);
		[Version (deprecated = true, deprecated_since = "0.5.3")]
		public void set_author (string author);
		public void set_creator (string creator);
		public void set_date (string date);
		public void set_description (string description);
		public void set_dlna_managed (GUPnP.OCMFlags dlna_managed);
		public void set_genre (string genre);
		public void set_id (string id);
		public void set_parent_id (string parent_id);
		public void set_restricted (bool restricted);
		public void set_title (string title);
		public void set_track_number (int track_number);
		public void set_update_id (uint update_id);
		public void set_upnp_class (string upnp_class);
		public void set_write_status (string write_status);
		public void unset_artists ();
		public void unset_update_id ();
		public bool update_id_is_set ();
		public string album { get; set; }
		public string album_art { get; set; }
		[Version (deprecated = true, deprecated_since = "0.5.3")]
		public string artist { get; set; }
		[Version (deprecated = true, deprecated_since = "0.5.3")]
		public string author { get; set; }
		public string creator { get; set; }
		public string date { get; set; }
		public Xml.Ns* dc_namespace { get; construct; }
		public string description { get; set; }
		public GUPnP.OCMFlags dlna_managed { get; set; }
		public Xml.Ns* dlna_namespace { get; construct; }
		public string genre { get; set; }
		public string id { get; set; }
		public string parent_id { get; set; }
		public Xml.Ns* pv_namespace { get; construct; }
		public bool restricted { get; set; }
		public string title { get; set; }
		public int track_number { get; set; }
		public uint update_id { get; set; }
		public string upnp_class { get; set; }
		public Xml.Ns* upnp_namespace { get; construct; }
		public string write_status { get; set; }
		public Xml.Node* xml_node { get; construct; }
	}
	[CCode (cheader_filename = "libgupnp-av/gupnp-av.h", type_id = "gupnp_didl_lite_parser_get_type ()")]
	public class DIDLLiteParser : GLib.Object {
		[CCode (has_construct_function = false)]
		public DIDLLiteParser ();
		public bool parse_didl (string didl) throws GLib.Error;
		public virtual signal void container_available (GUPnP.DIDLLiteContainer container);
		public virtual signal void item_available (GUPnP.DIDLLiteItem item);
		public virtual signal void object_available (GUPnP.DIDLLiteObject object);
	}
	[CCode (cheader_filename = "libgupnp-av/gupnp-av.h", type_id = "gupnp_didl_lite_resource_get_type ()")]
	public class DIDLLiteResource : GLib.Object {
		[CCode (has_construct_function = false)]
		protected DIDLLiteResource ();
		public int get_audio_channels ();
		public int get_bitrate ();
		public int get_bits_per_sample ();
		public int64 get_cleartext_size ();
		public int get_color_depth ();
		public Xml.Ns* get_dlna_namespace ();
		public long get_duration ();
		public int get_height ();
		public unowned string get_import_uri ();
		public unowned string get_protection ();
		public unowned GUPnP.ProtocolInfo get_protocol_info ();
		public Xml.Ns* get_pv_namespace ();
		public int get_sample_freq ();
		public long get_size ();
		public int64 get_size64 ();
		[Version (since = "0.12.4")]
		public unowned string get_subtitle_file_type ();
		[Version (since = "0.12.4")]
		public unowned string get_subtitle_file_uri ();
		public uint get_track_total ();
		public uint get_update_count ();
		public unowned string get_uri ();
		public int get_width ();
		public unowned Xml.Node get_xml_node ();
		public void set_audio_channels (int n_channels);
		public void set_bitrate (int bitrate);
		public void set_bits_per_sample (int sample_size);
		public void set_cleartext_size (int64 cleartext_size);
		public void set_color_depth (int color_depth);
		public void set_duration (long duration);
		public void set_height (int height);
		public void set_import_uri (string import_uri);
		public void set_protection (string protection);
		public void set_protocol_info (GUPnP.ProtocolInfo info);
		public void set_sample_freq (int sample_freq);
		public void set_size (long size);
		public void set_size64 (int64 size);
		[Version (since = "0.12.4")]
		public void set_subtitle_file_type (string? type);
		[Version (since = "0.12.4")]
		public void set_subtitle_file_uri (string? uri);
		public void set_track_total (uint track_total);
		public void set_update_count (uint update_count);
		public void set_uri (string uri);
		public void set_width (int width);
		public bool track_total_is_set ();
		public void unset_track_total ();
		public void unset_update_count ();
		public bool update_count_is_set ();
		public int audio_channels { get; set; }
		public int bitrate { get; set; }
		public int bits_per_sample { get; set; }
		public int64 cleartext_size { get; set; }
		public int color_depth { get; set; }
		public Xml.Ns* dlna_namespace { get; construct; }
		public long duration { get; set; }
		public int height { get; set; }
		public string import_uri { get; set; }
		public string protection { get; set; }
		public GUPnP.ProtocolInfo protocol_info { get; set; }
		public Xml.Ns* pv_namespace { get; construct; }
		public int sample_freq { get; set; }
		public long size { get; set; }
		public int64 size64 { get; set; }
		public string subtitle_file_type { get; set; }
		public string subtitle_file_uri { get; set; }
		public uint track_total { get; set; }
		public uint update_count { get; set; }
		public string uri { get; set; }
		public int width { get; set; }
		public Xml.Node* xml_node { get; construct; }
	}
	[CCode (cheader_filename = "libgupnp-av/gupnp-av.h", type_id = "gupnp_didl_lite_writer_get_type ()")]
	public class DIDLLiteWriter : GLib.Object {
		[CCode (cname = "GUPNP_DIDL_LITE_WRITER_NAMESPACE_DC")]
		public const string NAMESPACE_DC;
		[CCode (cname = "GUPNP_DIDL_LITE_WRITER_NAMESPACE_DLNA")]
		public const string NAMESPACE_DLNA;
		[CCode (cname = "GUPNP_DIDL_LITE_WRITER_NAMESPACE_UPNP")]
		public const string NAMESPACE_UPNP;
		[CCode (has_construct_function = false)]
		public DIDLLiteWriter (string? language);
		public GUPnP.DIDLLiteContainer add_container ();
		public GUPnP.DIDLLiteDescriptor add_descriptor ();
		public GUPnP.DIDLLiteItem add_item ();
		public void filter (string filter);
		public unowned string get_language ();
		public string get_string ();
		public unowned Xml.Node get_xml_node ();
		public string language { get; construct; }
		public Xml.Node* xml_node { get; }
	}
	[CCode (cheader_filename = "libgupnp-av/gupnp-av.h", type_id = "gupnp_feature_get_type ()")]
	public class Feature : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Feature ();
		public unowned string get_name ();
		public unowned string get_object_ids ();
		public unowned string get_version ();
		public string name { get; construct; }
		public string object_ids { get; construct; }
		public string version { get; construct; }
	}
	[CCode (cheader_filename = "libgupnp-av/gupnp-av.h", type_id = "gupnp_feature_list_parser_get_type ()")]
	public class FeatureListParser : GLib.Object {
		[CCode (has_construct_function = false)]
		public FeatureListParser ();
		public GLib.List<GUPnP.Feature> parse_text (string text) throws GLib.Error;
	}
	[CCode (cheader_filename = "libgupnp-av/gupnp-av.h", type_id = "gupnp_last_change_parser_get_type ()")]
	public class LastChangeParser : GLib.Object {
		[CCode (has_construct_function = false)]
		public LastChangeParser ();
		public bool parse_last_change (uint instance_id, string last_change_xml, ...) throws GLib.Error;
	}
	[CCode (cheader_filename = "libgupnp-av/gupnp-av.h", type_id = "gupnp_media_collection_get_type ()")]
	public class MediaCollection : GLib.Object {
		[CCode (has_construct_function = false)]
		public MediaCollection ();
		public GUPnP.DIDLLiteItem add_item ();
		[CCode (has_construct_function = false)]
		public MediaCollection.from_string (string data);
		public unowned string get_author ();
		public GLib.List<GUPnP.DIDLLiteItem> get_items ();
		public bool get_mutable ();
		public string get_string ();
		public unowned string get_title ();
		public void set_author (string author);
		public void set_title (string title);
		public string author { get; set construct; }
		public string data { construct; }
		public bool mutable { get; }
		public string title { get; set construct; }
	}
	[CCode (cheader_filename = "libgupnp-av/gupnp-av.h", type_id = "gupnp_protocol_info_get_type ()")]
	public class ProtocolInfo : GLib.Object {
		[CCode (has_construct_function = false)]
		public ProtocolInfo ();
		[CCode (has_construct_function = false)]
		public ProtocolInfo.from_string (string protocol_info) throws GLib.Error;
		public GUPnP.DLNAConversion get_dlna_conversion ();
		public GUPnP.DLNAFlags get_dlna_flags ();
		public GUPnP.DLNAOperation get_dlna_operation ();
		public unowned string get_dlna_profile ();
		public unowned string get_mime_type ();
		public unowned string get_network ();
		[CCode (array_length = false, array_null_terminated = true)]
		public unowned string[] get_play_speeds ();
		public unowned string get_protocol ();
		public bool is_compatible (GUPnP.ProtocolInfo info2);
		public void set_dlna_conversion (GUPnP.DLNAConversion conversion);
		public void set_dlna_flags (GUPnP.DLNAFlags flags);
		public void set_dlna_operation (GUPnP.DLNAOperation operation);
		public void set_dlna_profile (string profile);
		public void set_mime_type (string mime_type);
		public void set_network (string network);
		public void set_play_speeds (string speeds);
		public void set_protocol (string protocol);
		public string to_string ();
		public GUPnP.DLNAConversion dlna_conversion { get; set; }
		public GUPnP.DLNAFlags dlna_flags { get; set; }
		public GUPnP.DLNAOperation dlna_operation { get; set; }
		public string dlna_profile { get; set; }
		public string mime_type { get; set; }
		public string network { get; set; }
		[CCode (array_length = false, array_null_terminated = true)]
		public string[] play_speeds { get; set; }
		public string protocol { get; set; }
	}
	[CCode (cheader_filename = "libgupnp-av/gupnp-av.h", type_id = "gupnp_search_criteria_parser_get_type ()")]
	public class SearchCriteriaParser : GLib.Object {
		[CCode (has_construct_function = false)]
		public SearchCriteriaParser ();
		public static GLib.Quark error_quark ();
		public bool parse_text (string text) throws GLib.Error;
		public virtual signal void begin_parens ();
		public virtual signal void conjunction ();
		public virtual signal void disjunction ();
		public virtual signal void end_parens ();
		public virtual signal bool expression (string property, GUPnP.SearchCriteriaOp op, string value, GLib.Error error);
	}
	[CCode (cheader_filename = "libgupnp-av/gupnp-av.h", cprefix = "GUPNP_CDS_LAST_CHANGE_EVENT_", has_type_id = false)]
	public enum CDSLastChangeEvent {
		INVALID,
		OBJECT_ADDED,
		OBJECT_REMOVED,
		OBJECT_MODIFIED,
		ST_DONE
	}
	[CCode (cheader_filename = "libgupnp-av/gupnp-av.h", cprefix = "GUPNP_DIDL_LITE_FRAGMENT_RESULT_", has_type_id = false)]
	public enum DIDLLiteFragmentResult {
		OK,
		CURRENT_BAD_XML,
		NEW_BAD_XML,
		CURRENT_INVALID,
		NEW_INVALID,
		REQUIRED_TAG,
		READONLY_TAG,
		MISMATCH,
		UNKNOWN_ERROR
	}
	[CCode (cheader_filename = "libgupnp-av/gupnp-av.h", cprefix = "GUPNP_DLNA_CONVERSION_", type_id = "gupnp_dlna_conversion_get_type ()")]
	[Flags]
	public enum DLNAConversion {
		NONE,
		TRANSCODED
	}
	[CCode (cheader_filename = "libgupnp-av/gupnp-av.h", cprefix = "GUPNP_DLNA_FLAGS_", type_id = "gupnp_dlna_flags_get_type ()")]
	[Flags]
	public enum DLNAFlags {
		NONE,
		SENDER_PACED,
		TIME_BASED_SEEK,
		BYTE_BASED_SEEK,
		PLAY_CONTAINER,
		S0_INCREASE,
		SN_INCREASE,
		RTSP_PAUSE,
		STREAMING_TRANSFER_MODE,
		INTERACTIVE_TRANSFER_MODE,
		BACKGROUND_TRANSFER_MODE,
		CONNECTION_STALL,
		DLNA_V15,
		LINK_PROTECTED_CONTENT,
		[CCode (cname = "GUPNP_DLNA_FLAGS_CLEAR_TEXT_BYTE_SEEK_FULL")]
		CLEARTEXT_BYTESEEK_FULL,
		[CCode (cname = "GUPNP_DLNA_FLAGS_LOP_CLEAR_TEXT_BYTE_SEEK")]
		LOP_CLEARTEXT_BYTESEEK
	}
	[CCode (cheader_filename = "libgupnp-av/gupnp-av.h", cprefix = "GUPNP_DLNA_OPERATION_", type_id = "gupnp_dlna_operation_get_type ()")]
	[Flags]
	public enum DLNAOperation {
		NONE,
		RANGE,
		TIMESEEK
	}
	[CCode (cheader_filename = "libgupnp-av/gupnp-av.h", cprefix = "GUPNP_OCM_FLAGS_", type_id = "gupnp_ocm_flags_get_type ()")]
	[Flags]
	public enum OCMFlags {
		NONE,
		UPLOAD,
		CREATE_CONTAINER,
		DESTROYABLE,
		UPLOAD_DESTROYABLE,
		CHANGE_METADATA
	}
	[CCode (cheader_filename = "libgupnp-av/gupnp-av.h", cprefix = "GUPNP_SEARCH_CRITERIA_OP_", type_id = "gupnp_search_criteria_op_get_type ()")]
	public enum SearchCriteriaOp {
		EQ,
		NEQ,
		LESS,
		LEQ,
		GREATER,
		GEQ,
		CONTAINS,
		DOES_NOT_CONTAIN,
		DERIVED_FROM,
		EXISTS
	}
	[CCode (cheader_filename = "libgupnp-av/gupnp-av.h", cprefix = "GUPNP_PROTOCOL_ERROR_")]
	public errordomain ProtocolError {
		INVALID_SYNTAX,
		OTHER;
		public static GLib.Quark quark ();
	}
	[CCode (cheader_filename = "libgupnp-av/gupnp-av.h")]
	public errordomain SearchCriteriaParserError {
		[CCode (cname = "GUPNP_SEARCH_CRITERIA_PARSER_ERROR_FAILED")]
		FAILED
	}
}
