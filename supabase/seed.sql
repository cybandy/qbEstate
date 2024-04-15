-- property types
-- Residential Properties
INSERT INTO public.property_type (title, description) VALUES
  ('Single-Family Home', 'A detached house designed for one family.'),
  ('Condominium (Condo)', 'An individual unit within a larger building or community where owners share common areas and amenities.'),
  ('Townhouse', 'A multi-level home that shares walls with neighboring units, typically with individual entrances.'),
  ('Duplex', 'A building with two separate living units, often side-by-side or one on top of the other.'),
  ('Apartment', 'A unit within a multi-unit building, typically for rent.'),
  ('Co-op (Cooperative)', 'Residents own shares in a corporation that owns the building, and each shareholder has the right to occupy a unit.'),
  ('Mobile Home', 'A prefabricated home that can be moved to different locations, often found in mobile home parks.');

-- commercial properties
INSERT INTO public.property_type (title, description) VALUES
  ('Office Building', 'A building primarily used for office spaces.'),
  ('Retail Space', 'Locations for businesses to sell products or services, such as stores, malls, or shopping centers.'),
  ('Industrial Property', 'Properties used for manufacturing, distribution, storage, or other industrial purposes.'),
  ('Mixed-Use Property', 'Buildings that combine residential and commercial spaces, such as apartments with ground-floor retail.'),
  ('Hotel or Hospitality Property', 'Properties used for lodging, such as hotels, motels, or bed-and-breakfasts.');

-- land
INSERT INTO public.property_type (title, description) VALUES
  ('Residential Land', 'Vacant land zoned for residential development.'),
  ('Commercial Land', 'Land designated for commercial use, such as for building offices, retail centers, or industrial facilities.'),
  ('Agricultural Land', 'Land used for farming, ranching, or agricultural purposes.'),
  ('Vacant Land', 'Undeveloped land without any structures.');

-- specialized properties
INSERT INTO public.property_type (title, description) VALUES
  ('Luxury Homes', 'High-end, upscale properties with luxurious features and amenities.'),
  ('Historic Properties', 'Buildings with significant historical value, often preserved for their architectural or cultural importance.'),
  ('Waterfront Properties', 'Properties located along bodies of water, such as lakes, rivers, or oceans.'),
  ('Eco-Friendly or Green Homes', 'Properties designed to be energy-efficient, environmentally friendly, or sustainable.'),
  ('Senior Living Communities', 'Housing developments designed for older adults, offering amenities and services tailored to their needs.'),
  ('Student Housing', 'Residential properties near college campuses, typically rented by students.'),
  ('Vacation Homes', 'Second homes or properties used for recreational purposes, such as beach houses or mountain cabins.');


-- sale type
INSERT INTO public.sale_type ('value') VALUES ('rent'), ('buy'), ('sell');
