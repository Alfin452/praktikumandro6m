class Agenda {
  final int? id;
  final String judul;
  final String keterangan;
  final String alamat;
  final String tanggal;

  Agenda({
    this.id,
    required this.judul,
    required this.keterangan,
    required this.alamat,
    required this.tanggal,
  });

  factory Agenda.fromJson(Map<String, dynamic> json) {
    return Agenda(
      id: json['id'],
      judul: json['judul'],
      keterangan: json['keterangan'],
      alamat: json['alamat'] ?? '',
      tanggal: json['tanggal'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'judul': judul,
      'keterangan': keterangan,
      'alamat': alamat,
      'tanggal': tanggal,
    };
  }
}
