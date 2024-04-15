alter table "public"."address" add column "property_id" bigint;

alter table "public"."address" add constraint "public_address_property_id_fkey" FOREIGN KEY (property_id) REFERENCES property(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."address" validate constraint "public_address_property_id_fkey";


