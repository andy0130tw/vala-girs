/* folks-eds.vapi generated by valac 0.25.1.15-e0adb, do not modify. */

[CCode (gir_namespace = "FolksEds", gir_version = "0.6")]
namespace Edsf {
	[CCode (cheader_filename = "folks/folks-eds.h")]
	public class Persona : Folks.Persona, Folks.AntiLinkable, Folks.AvatarDetails, Folks.BirthdayDetails, Folks.EmailDetails, Folks.FavouriteDetails, Folks.GenderDetails, Folks.GroupDetails, Folks.ImDetails, Folks.LocalIdDetails, Folks.LocationDetails, Folks.NameDetails, Folks.NoteDetails, Folks.PhoneDetails, Folks.RoleDetails, Folks.UrlDetails, Folks.PostalAddressDetails, Folks.WebServiceDetails {
		public const string[] address_fields;
		public const string[] email_fields;
		public const string folks_field_attribute_name;
		public const string gender_attribute_name;
		public const string gender_female;
		public const string gender_male;
		public const string[] phone_fields;
		[Deprecated (replacement = "Folks.UrlFieldDetails.PARAM_TYPE_BLOG", since = "0.6.3")]
		public const string[] url_properties;
		public Persona (Edsf.PersonaStore store, E.Contact contact);
		public async void change_in_google_personal_group (bool in_personal) throws Folks.PropertyError;
		public async void change_system_groups (Gee.Set<string> system_groups) throws Folks.PropertyError;
		public override void linkable_property_to_links (string prop_name, Folks.Persona.LinkablePropertyCallback callback);
		public E.Contact contact { get; construct; }
		public string contact_id { get; construct; }
		[CCode (notify = false)]
		public bool in_google_personal_group { get; set; }
		public override string[] linkable_properties { get; }
		[CCode (notify = false)]
		public Gee.Set<string>? system_groups { get; set; }
		public override string[] writeable_properties { get; }
	}
	[CCode (cheader_filename = "folks/folks-eds.h")]
	public class PersonaStore : Folks.PersonaStore {
		[Deprecated (replacement = "Edsf.PersonaStore.with_source_registry", since = "0.7.2")]
		public PersonaStore (E.Source s);
		public override async Folks.Persona? add_persona_from_details (GLib.HashTable<string,GLib.Value?> details) throws Folks.PersonaStoreError;
		public static async void create_address_book (string id) throws GLib.Error;
		public override async void prepare () throws Folks.PersonaStoreError;
		public static async void remove_address_book (Edsf.PersonaStore store) throws GLib.Error;
		public override async void remove_persona (Folks.Persona persona) throws Folks.PersonaStoreError;
		public PersonaStore.with_source_registry (E.SourceRegistry r, E.Source s);
		public override string[] always_writeable_properties { get; }
		public override Folks.MaybeBool can_add_personas { get; }
		public override Folks.MaybeBool can_alias_personas { get; }
		public override Folks.MaybeBool can_group_personas { get; }
		public override Folks.MaybeBool can_remove_personas { get; }
		public override bool is_prepared { get; }
		public override bool is_quiescent { get; }
		public override Gee.Map<string,Edsf.Persona> personas { get; }
		public E.Source source { get; construct; }
		public override string type_id { get; }
	}
}
