// ignore_for_file: public_member_api_docs, sort_constructors_first
class ChemicalCure {
  final String name;
  final String producturl;
  final List<String> description;

  ChemicalCure({
    required this.name,
    required this.producturl,
    required this.description,
  });
}

List<ChemicalCure> chemicalCures = [
  ChemicalCure(
    name: 'Triazoles',
    producturl: 'https://www.bighaat.com/products/folicur',
    description: [
      "Triazole fungicides, such as tebuconazole and propiconazole, are systemic fungicides that are absorbed by the plant and move through the plant's vascular system to protect against the disease.",
      'They work by inhibiting the production of ergosterol, a key component of the fungal cell membrane, which leads to the death of the fungus.',
    ],
  ),
  ChemicalCure(
    name: 'Strobilurins',
    producturl:
        'https://https://krushikendra.com/Azostar-Azoxystrobin-23-SC-Fungicide.bighaat.com/products/folicur',
    description: [
      "Strobilurin fungicides, such as azoxystrobin and kresoxim-methyl, are also systemic fungicides that work by inhibiting mitochondrial respiration in the fungal cells, leading to the death of the fungus.",
    ],
  ),
  ChemicalCure(
    name: 'Chlorothalonil',
    producturl: 'https://www.drexchem.com/products/chlorothalonil-zn/',
    description: [
      'Chlorothalonil is a protectant fungicide that forms a protective barrier on the surface of the plant to prevent fungal spores from germinating and infecting the plant.',
      'It works by disrupting the fungal cell membrane and inhibiting fungal respiration.',
    ],
  ),
  ChemicalCure(
    name: 'Mancozeb',
    producturl: 'https://zfcstore.com/product/mancozeb/',
    description: [
      'Mancozeb is another protectant fungicide that works by inhibiting fungal respiration and disrupting the fungal cell membrane.',
      'It also has a protective effect on plant tissues, which can help to reduce the symptoms of the disease.',
    ],
  ),
];
