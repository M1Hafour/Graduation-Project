// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:plant_analyzer/information/domain/chemical_cure.dart';

class DiseaseInfo {
  final String name;
  final List<String> cause;
  final List<String> description;
  final List<ChemicalCure> cure;

  DiseaseInfo({
    required this.name,
    required this.cause,
    required this.description,
    required this.cure,
  });
}

final stemrust = DiseaseInfo(
  name: 'Stem Rust',
  cause: [
    'Wheat stem rust is caused by a fungal pathogen called Puccinia graminis f. sp. tritici.',
    'The fungus is an obligate parasite, which means that it relies on a living host to survive and reproduce.',
    'It primarily infects wheat, but can also affect other cereal crops like barley and rye.'
  ],
  description: [
    'Wheat stem rust is a fungal disease that affects wheat plants.',
    'It is caused by the fungus Puccinia graminis f. sp. tritici.',
    'The disease gets its name from the reddish-brown spores that form on the stems of infected wheat plants, giving the appearance of a rusty stem.',
    'Wheat stem rust is a serious threat to wheat production worldwide, as it can cause significant yield losses if not controlled.',
    'The disease can spread rapidly, especially under favorable environmental conditions, such as high humidity and rainfall.'
  ],
  cure: chemicalCures,
);
final yellowrust = DiseaseInfo(
  name: 'Yellow Rust',
  description: [
    'Wheat yellow rust is a fungal disease that affects wheat plants.',
    'It is caused by the fungus Puccinia striiformis f. sp. tritici.',
    'The disease gets its name from the yellow-orange pustules that form on the leaves of infected wheat plants.'
  ],
  cause: [
    'Wheat yellow rust is caused by a fungal pathogen called Puccinia striiformis f. sp. tritici.',
    'The fungus is an obligate parasite, which means that it relies on a living host to survive and reproduce.',
    'It primarily infects wheat, but can also affect other cereal crops like barley and rye.'
  ],
  cure: chemicalCures,
);

final septoria = DiseaseInfo(
  name: 'Septoria',
  description: [
    'Septoria is a fungal disease that affects wheat plants, and is caused by the fungus Septoria tritici.',
    'It is one of the most common wheat diseases worldwide, and can cause significant yield losses if not controlled.',
    'The disease can also reduce the quality of the grain, making it less valuable for food and feed.'
  ],
  cause: [
    'Symptoms of Septoria include small, dark spots on the leaves, which can develop into larger, irregularly shaped lesions.',
    'The lesions can be surrounded by a yellow halo, and may have tiny black dots (fungal fruiting bodies) in the center.',
    'Severely infected plants can have reduced yield and poor quality grain.'
  ],
  cure: chemicalCures,
);
final powderymildew = DiseaseInfo(
  name: 'Powdery mildew',
  cause: [
    'Powdery mildew can occur at any stage of wheat growth, but is most common during the vegetative stage.',
    'The disease can spread rapidly under favorable environmental conditions, such as high humidity and moderate temperatures.',
    'It can also be spread by wind, rain, and human activity, such as farm equipment movement.'
  ],
  description: [
    'Powdery mildew is a fungal disease that affects wheat plants.',
    'It is caused by several species of the fungus Blumeria graminis.',
    'The disease is characterized by the appearance of white, powdery growth on the leaves and stems of the plant.'
  ],
  cure: chemicalCures,
);
