/* zeitgeist-datamodel-2.0.vapi generated by valac 0.56.2.25-2b69b, do not modify. */

namespace Zeitgeist {
	namespace DataSources {
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string SIG_DATASOURCES;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public static GLib.GenericArray<Zeitgeist.DataSource> from_variant (GLib.Variant sources_variant) throws Zeitgeist.DataModelError;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public static GLib.Variant to_variant (GLib.HashTable<string,Zeitgeist.DataSource> sources);
	}
	namespace Events {
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public static GLib.GenericArray<Zeitgeist.Event?> from_variant (GLib.Variant vevents) throws Zeitgeist.DataModelError;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public static GLib.Variant to_variant (GLib.GenericArray<Zeitgeist.Event?> events);
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public static GLib.Variant to_variant_with_limit (GLib.GenericArray<Zeitgeist.Event?> events, size_t limit = Utils.MAX_DBUS_RESULT_SIZE) throws Zeitgeist.DataModelError;
	}
	namespace NCAL {
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string ALARM;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string ATTACHMENT;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string CALENDAR;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string CALENDAR_DATA_OBJECT;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string EVENT;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string FREEBUSY;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string JOURNAL;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string TIMEZONE;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string TODO;
	}
	namespace NCO {
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string CONTACT;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string CONTACT_GROUP;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string CONTACT_LIST;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string CONTACT_LIST_DATA_OBJECT;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string ORGANIZATION_CONTACT;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string PERSON_CONTACT;
	}
	namespace NFO {
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string APPLICATION;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string ARCHIVE;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string ARCHIVE_ITEM;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string ATTACHMENT;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string AUDIO;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string BOOKMARK;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string BOOKMARK_FOLDER;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string CURSOR;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string DATA_CONTAINER;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string DELETED_RESOURCE;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string DOCUMENT;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string EMBEDDED_FILE_DATA_OBJECT;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string EXECUTABLE;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string FILESYSTEM;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string FILESYSTEM_IMAGE;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string FILE_DATA_OBJECT;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string FOLDER;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string FONT;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string HARD_DISK_PARTITION;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string HTML_DOCUMENT;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string ICON;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string IMAGE;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string MEDIA;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string MEDIA_LIST;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string MEDIA_STREAM;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string MIND_MAP;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string OPERATING_SYSTEM;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string PAGINATED_TEXT_DOCUMENT;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string PLAIN_TEXT_DOCUMENT;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string PRESENTATION;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string RASTER_IMAGE;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string REMOTE_DATA_OBJECT;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string REMOTE_PORT_ADDRESS;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string SOFTWARE;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string SOFTWARE_ITEM;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string SOFTWARE_SERVICE;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string SOURCE_CODE;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string SPREADSHEET;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string TEXT_DOCUMENT;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string TRASH;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string VECTOR_IMAGE;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string VIDEO;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string VISUAL;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string WEBSITE;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string WEB_DATA_OBJECT;
	}
	namespace NIE {
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string DATA_OBJECT;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string INFORMATION_ELEMENT;
	}
	namespace NMM {
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string MOVIE;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string MUSIC_ALBUM;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string MUSIC_PIECE;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string TVSERIES;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string TVSHOW;
	}
	namespace NMO {
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string EMAIL;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string IMMESSAGE;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string MAILBOX;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string MAILBOX_DATA_OBJECT;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string MESSAGE;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string MIME_ENTITY;
	}
	namespace Symbol {
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public static GLib.List<weak string> get_all_children (string symbol_uri);
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public static GLib.List<weak string> get_all_parents (string symbol_uri);
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public static GLib.List<weak string> get_children (string symbol_uri);
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public static unowned string get_description (string symbol_uri);
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public static unowned string get_display_name (string symbol_uri);
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public static GLib.List<weak string> get_parents (string symbol_uri);
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public static bool is_a (string? symbol_uri, string? parent_uri);
	}
	namespace Timestamp {
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const int64 DAY;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const int64 HOUR;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const int64 MINUTE;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const int64 SECOND;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const int64 WEEK;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const int64 YEAR;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public static int64 from_date (GLib.Date date);
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public static int64 from_dmy (GLib.DateDay day, GLib.DateMonth month, GLib.DateYear year);
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public static int64 from_iso8601 (string datetime);
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public static int64 from_now ();
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public static int64 from_timeval (GLib.TimeVal timeval);
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public static int64 next_midnight (int64 timestamp);
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public static int64 prev_midnight (int64 timestamp);
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public static GLib.Date to_date (int64 timestamp);
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public static string to_iso8601 (int64 timestamp);
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public static GLib.TimeVal to_timeval (int64 timestamp);
	}
	namespace Utils {
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const uint CACHE_SIZE;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string ENGINE_DBUS_NAME;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string ENGINE_DBUS_PATH;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const size_t MAX_DBUS_RESULT_SIZE;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string SIG_EVENT;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public static void backup_database () throws GLib.Error;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public static unowned string get_data_path ();
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public static unowned string get_database_file_backup_path ();
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public static unowned string get_database_file_path ();
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public static string get_database_file_retire_name ();
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public static string get_default_data_path ();
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public static unowned string get_local_extensions_path ();
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public static bool is_empty_string (string? s);
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public static bool log_may_read_directly ();
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public static bool parse_negation (ref string val);
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public static bool parse_noexpand (ref string val);
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public static bool parse_wildcard (ref string val);
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public static void set_database_file_path (string path);
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public static bool using_in_memory_database ();
	}
	namespace ZG {
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string ACCEPT_EVENT;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string ACCESS_EVENT;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string APPLICATION_ACTION;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string CREATE_EVENT;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string DELETE_EVENT;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string DENY_EVENT;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string EVENT_INTERPRETATION;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string EVENT_MANIFESTATION;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string EXPIRE_EVENT;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string HEURISTIC_ACTIVITY;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string LEAVE_EVENT;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string MODIFY_EVENT;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string MOVE_EVENT;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string RECEIVE_EVENT;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string SCHEDULED_ACTIVITY;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string SEND_EVENT;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string SYSTEM_NOTIFICATION;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string USER_ACTIVITY;
		[CCode (cheader_filename = "zeitgeist-datamodel.h")]
		public const string WORLD_ACTIVITY;
	}
	[CCode (cheader_filename = "zeitgeist-datamodel.h")]
	public class DataSource : GLib.Object {
		public DataSource ();
		public DataSource.from_variant (GLib.Variant variant, bool reset_running = false) throws Zeitgeist.DataModelError;
		public DataSource.full (string unique_id, string name, string description, GLib.GenericArray<Zeitgeist.Event>? templates);
		public GLib.Variant to_variant ();
		public string description { get; set; }
		public bool enabled { get; set; }
		public GLib.GenericArray<Zeitgeist.Event>? event_templates { get; set; }
		public string name { get; set; }
		public bool running { get; set; }
		public int64 timestamp { get; set; }
		public string unique_id { get; set; }
	}
	[CCode (cheader_filename = "zeitgeist-datamodel.h")]
	public class Event : GLib.Object {
		public const string SIGNATURE;
		public Event ();
		public void add_subject (Zeitgeist.Subject subject);
		public void debug_print ();
		public Event.from_variant (GLib.Variant event_variant) throws Zeitgeist.DataModelError;
		public Event.full (string? interpretation = null, string? manifestation = null, string? actor = null, string? origin = null, ...);
		public Zeitgeist.Subject get_subject (int index);
		public bool matches_template (Zeitgeist.Event template_event);
		public int num_subjects ();
		public void set_actor_from_app_info (GLib.AppInfo info);
		public void take_subject (owned Zeitgeist.Subject subject);
		public GLib.Variant to_variant ();
		public string? actor { get; set; }
		public uint32 id { get; set; }
		public string? interpretation { get; set; }
		public string? manifestation { get; set; }
		public string? origin { get; set; }
		public GLib.ByteArray? payload { get; set; }
		public GLib.GenericArray<Zeitgeist.Subject> subjects { get; set; }
		public int64 timestamp { get; set; }
	}
	[CCode (cheader_filename = "zeitgeist-datamodel.h")]
	public class SimpleResultSet : GLib.Object, Zeitgeist.ResultSet {
		public SimpleResultSet (GLib.GenericArray<Zeitgeist.Event> events);
		public SimpleResultSet.with_num_matches (GLib.GenericArray<Zeitgeist.Event> events, uint matches);
	}
	[CCode (cheader_filename = "zeitgeist-datamodel.h")]
	public class Subject : GLib.Object {
		public Subject ();
		public Subject.from_variant (GLib.Variant subject_variant) throws Zeitgeist.DataModelError;
		public Subject.full (string? uri = null, string? interpretation = null, string? manifestation = null, string? mimetype = null, string? origin = null, string? text = null, string? storage = null);
		public bool matches_template (Zeitgeist.Subject template_subject);
		public Subject.move_event (string? source_uri = null, string? source_origin = null, string? destination_uri = null, string? destination_origin = null, string? interpretation, string? manifestation = null, string? mimetype = null, string? text = null, string? storage = null);
		public GLib.Variant to_variant ();
		public string? current_origin { get; set; }
		public string? current_uri { get; set; }
		public string? interpretation { get; set; }
		public string? manifestation { get; set; }
		public string? mimetype { get; set; }
		public string? origin { get; set; }
		public string? storage { get; set; }
		public string? text { get; set; }
		public string? uri { get; set; }
	}
	[CCode (cheader_filename = "zeitgeist-datamodel.h", type_signature = "(xx)")]
	public class TimeRange : GLib.Object {
		public TimeRange (int64 start_msec, int64 end_msec);
		public TimeRange.anytime ();
		public TimeRange.from_now ();
		public TimeRange.from_variant (GLib.Variant variant) throws Zeitgeist.DataModelError;
		public Zeitgeist.TimeRange? intersect (Zeitgeist.TimeRange time_range);
		public TimeRange.to_now ();
		public GLib.Variant to_variant ();
		public int64 end { get; private set; }
		public int64 start { get; private set; }
	}
	[CCode (cheader_filename = "zeitgeist-datamodel.h")]
	public interface ResultSet : GLib.Object {
		public abstract uint estimated_matches ();
		public abstract bool has_next ();
		public Zeitgeist.ResultSet iterator ();
		public abstract Zeitgeist.Event? next_value ();
		public abstract void reset ();
		public abstract uint size ();
		public abstract uint tell ();
	}
	[CCode (cheader_filename = "zeitgeist-datamodel.h")]
	public enum RelevantResultType {
		RECENT,
		RELATED
	}
	[CCode (cheader_filename = "zeitgeist-datamodel.h")]
	public enum ResultType {
		MOST_RECENT_EVENTS,
		LEAST_RECENT_EVENTS,
		MOST_RECENT_SUBJECTS,
		LEAST_RECENT_SUBJECTS,
		MOST_POPULAR_SUBJECTS,
		LEAST_POPULAR_SUBJECTS,
		MOST_POPULAR_ACTOR,
		LEAST_POPULAR_ACTOR,
		MOST_RECENT_ACTOR,
		LEAST_RECENT_ACTOR,
		MOST_RECENT_ORIGIN,
		LEAST_RECENT_ORIGIN,
		MOST_POPULAR_ORIGIN,
		LEAST_POPULAR_ORIGIN,
		OLDEST_ACTOR,
		MOST_RECENT_SUBJECT_INTERPRETATION,
		LEAST_RECENT_SUBJECT_INTERPRETATION,
		MOST_POPULAR_SUBJECT_INTERPRETATION,
		LEAST_POPULAR_SUBJECT_INTERPRETATION,
		MOST_RECENT_MIMETYPE,
		LEAST_RECENT_MIMETYPE,
		MOST_POPULAR_MIMETYPE,
		LEAST_POPULAR_MIMETYPE,
		MOST_RECENT_CURRENT_URI,
		LEAST_RECENT_CURRENT_URI,
		MOST_POPULAR_CURRENT_URI,
		LEAST_POPULAR_CURRENT_URI,
		MOST_RECENT_EVENT_ORIGIN,
		LEAST_RECENT_EVENT_ORIGIN,
		MOST_POPULAR_EVENT_ORIGIN,
		LEAST_POPULAR_EVENT_ORIGIN,
		MOST_RECENT_CURRENT_ORIGIN,
		LEAST_RECENT_CURRENT_ORIGIN,
		MOST_POPULAR_CURRENT_ORIGIN,
		LEAST_POPULAR_CURRENT_ORIGIN,
		RELEVANCY;
		public static bool is_sort_order_asc (Zeitgeist.ResultType result_type);
	}
	[CCode (cheader_filename = "zeitgeist-datamodel.h")]
	public enum StorageState {
		NOT_AVAILABLE,
		AVAILABLE,
		ANY
	}
	[CCode (cheader_filename = "zeitgeist-datamodel.h")]
	[DBus (name = "org.gnome.zeitgeist.DataModelError")]
	public errordomain DataModelError {
		INVALID_SIGNATURE,
		NULL_EVENT,
		TOO_MANY_RESULTS
	}
	[CCode (cheader_filename = "zeitgeist-datamodel.h")]
	[DBus (name = "org.gnome.zeitgeist.EngineError")]
	public errordomain EngineError {
		BACKUP_FAILED,
		DATABASE_BUSY,
		DATABASE_CANTOPEN,
		DATABASE_CORRUPT,
		DATABASE_ERROR,
		DATABASE_RETIRE_FAILED,
		EXISTING_INSTANCE,
		INVALID_ARGUMENT,
		INVALID_EVENT,
		INVALID_KEY
	}
	[CCode (cheader_filename = "zeitgeist-datamodel.h")]
	public static unowned string? interpretation_for_mimetype (string? mimetype);
	[CCode (cheader_filename = "zeitgeist-datamodel.h")]
	public static unowned string? manifestation_for_uri (string uri);
	[CCode (cheader_filename = "zeitgeist-datamodel.h")]
	public static void register_mimetype (string mimetype, string interpretation_uri);
	[CCode (cheader_filename = "zeitgeist-datamodel.h")]
	public static void register_mimetype_regex (string mimetype_regex, string interpretation_uri);
	[CCode (cheader_filename = "zeitgeist-datamodel.h")]
	public static void register_uri_scheme (string uri_scheme, string manifestation_type);
}
