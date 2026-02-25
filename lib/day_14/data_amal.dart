class Amal {
  final String jenisAmal;
  final String namaDonatur;
  final String tanggalTransaksi;
  final String jumlahDonasi;
  final String image;

  Amal({
    required this.jenisAmal,
    required this.namaDonatur,
    required this.tanggalTransaksi,
    required this.jumlahDonasi,
    required this.image,
  });
}
final List<Amal> dataAmal = [
  Amal(
    jenisAmal: "Sedekah",
    namaDonatur: "Adham",
    tanggalTransaksi: "29 Februari 2028",
    jumlahDonasi: "Rp.10.000",
    image: "https://images.unsplash.com/photo-1593113598332-cd59a93f3c35",
  ),
  Amal(
    jenisAmal: "Infaq Jum'at",
    namaDonatur: "Rizky",
    tanggalTransaksi: "05 Maret 2028",
    jumlahDonasi: "Rp.25.000",
    image: "https://images.unsplash.com/photo-1579621970563-ebec7560ff3e",
  ),
  Amal(
    jenisAmal: "Zakat Penghasilan",
    namaDonatur: "Fahmi",
    tanggalTransaksi: "10 Maret 2028",
    jumlahDonasi: "Rp.750.000",
    image: "https://images.unsplash.com/photo-1601597111158-2fceff292cdc",
  ),
  Amal(
    jenisAmal: "Wakaf Al-Qur'an",
    namaDonatur: "Aisyah",
    tanggalTransaksi: "12 Maret 2028",
    jumlahDonasi: "Rp.150.000",
    image: "https://images.unsplash.com/photo-1542810634-71277d95dcbb",
  ),
  Amal(
    jenisAmal: "Santunan Yatim",
    namaDonatur: "Dina",
    tanggalTransaksi: "15 Maret 2028",
    jumlahDonasi: "Rp.50.000",
    image: "https://images.unsplash.com/photo-1488521787991-ed7bbaae773c",
  ),
  Amal(
    jenisAmal: "Donasi Masjid",
    namaDonatur: "Rahmat",
    tanggalTransaksi: "18 Maret 2028",
    jumlahDonasi: "Rp.200.000",
    image: "https://images.unsplash.com/photo-1585123334904-845d60e97b29",
  ),
  Amal(
    jenisAmal: "Sedekah Subuh",
    namaDonatur: "Ilham",
    tanggalTransaksi: "20 Maret 2028",
    jumlahDonasi: "Rp.15.000",
    image: "https://images.unsplash.com/photo-1509099836639-18ba1795216d",
  ),
  Amal(
    jenisAmal: "Infaq Harian",
    namaDonatur: "Siti",
    tanggalTransaksi: "22 Maret 2028",
    jumlahDonasi: "Rp.10.000",
    image: "https://images.unsplash.com/photo-1520607162513-77705c0f0d4a",
  ),
  Amal(
    jenisAmal: "Zakat Fitrah",
    namaDonatur: "Budi",
    tanggalTransaksi: "25 Maret 2028",
    jumlahDonasi: "Rp.45.000",
    image: "https://images.unsplash.com/photo-1576765607924-bd9a3b9a35b3",
  ),
  Amal(
    jenisAmal: "Wakaf Tanah",
    namaDonatur: "Hendra",
    tanggalTransaksi: "28 Maret 2028",
    jumlahDonasi: "Rp.1.500.000",
    image: "https://images.unsplash.com/photo-1509099836639-18ba1795216d",
  ),
  Amal(
    jenisAmal: "Sedekah Jumat",
    namaDonatur: "Nabila",
    tanggalTransaksi: "30 Maret 2028",
    jumlahDonasi: "Rp.30.000",
    image: "https://images.unsplash.com/photo-1607082350899-7e105aa886ae",
  ),
  Amal(
    jenisAmal: "Donasi Pendidikan",
    namaDonatur: "Farhan",
    tanggalTransaksi: "02 April 2028",
    jumlahDonasi: "Rp.100.000",
    image: "https://images.unsplash.com/photo-1588072432836-e10032774350",
  ),
  Amal(
    jenisAmal: "Santunan Dhuafa",
    namaDonatur: "Putri",
    tanggalTransaksi: "05 April 2028",
    jumlahDonasi: "Rp.75.000",
    image: "https://images.unsplash.com/photo-1599059813005-11265ba4b4ce",
  ),
  Amal(
    jenisAmal: "Infaq Pembangunan",
    namaDonatur: "Ardi",
    tanggalTransaksi: "08 April 2028",
    jumlahDonasi: "Rp.300.000",
    image: "https://images.unsplash.com/photo-1559027615-cd4628902d4a",
  ),
  Amal(
    jenisAmal: "Sedekah Online",
    namaDonatur: "Lina",
    tanggalTransaksi: "10 April 2028",
    jumlahDonasi: "Rp.20.000",
    image: "https://images.unsplash.com/photo-1593113630400-ea4288922497",
  ),
  Amal(
    jenisAmal: "Zakat Maal",
    namaDonatur: "Yusuf",
    tanggalTransaksi: "12 April 2028",
    jumlahDonasi: "Rp.2.000.000",
    image: "https://images.unsplash.com/photo-1601597111158-2fceff292cdc",
  ),
  Amal(
    jenisAmal: "Wakaf Sumur",
    namaDonatur: "Rani",
    tanggalTransaksi: "15 April 2028",
    jumlahDonasi: "Rp.500.000",
    image: "https://images.unsplash.com/photo-1509099836639-18ba1795216d",
  ),
  Amal(
    jenisAmal: "Donasi Kesehatan",
    namaDonatur: "Agus",
    tanggalTransaksi: "18 April 2028",
    jumlahDonasi: "Rp.120.000",
    image: "https://images.unsplash.com/photo-1580281657527-47eaaafbd8b3",
  ),
  Amal(
    jenisAmal: "Sedekah Pangan",
    namaDonatur: "Maya",
    tanggalTransaksi: "20 April 2028",
    jumlahDonasi: "Rp.60.000",
    image: "https://images.unsplash.com/photo-1542810634-71277d95dcbb",
  ),
  Amal(
    jenisAmal: "Infaq Ramadhan",
    namaDonatur: "Hafiz",
    tanggalTransaksi: "25 April 2028",
    jumlahDonasi: "Rp.250.000",
    image: "https://images.unsplash.com/photo-1520607162513-77705c0f0d4a",
  ),
];