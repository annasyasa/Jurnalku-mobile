// import 'package:flutter/material.dart';
// import 'package:jurnalku_mobile/table_permintaansaksi/table_permintaan_saksi.dart';

// class PermintaanSaksi extends StatelessWidget {
//   const PermintaanSaksi({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final List<String> listTanggal = [
//       "20 Oktober 2025",
//       "19 Oktober 2025",
//       "18 Oktober 2025",
//       "17 Oktober 2025",
//       "16 Oktober 2025",
//       "15 Oktober 2025",
//     ];

//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 1,
//         automaticallyImplyLeading: false,
//         title: Row(
//           children: [
//             const Icon(Icons.home, color: Colors.black),
//             const SizedBox(width: 12),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: const [
//                   Text(
//                     "Mochamad Reivaldy Zaen",
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 14,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   Text(
//                     "PPLG XII-3",
//                     style: TextStyle(color: Colors.black54, fontSize: 12),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(width: 10),
//             const CircleAvatar(
//               radius: 16,
//               backgroundColor: Colors.grey,
//               child: Icon(Icons.person, color: Colors.white),
//             ),
//           ],
//         ),
//       ),

//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Text(
//                 "Permintaan Saksi",
//                 style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 20),

//               ...listTanggal.map((tanggal) {
//                 return GestureDetector(
//                   onTap: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => const TablePermintaanSaksi()));
//                   },
//                   child: Container(
//                     width: double.infinity, 
//                     margin: const EdgeInsets.only(bottom: 12), 
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 16,
//                       vertical: 20,
//                     ),
//                     decoration: BoxDecoration(
//                       color: const Color(0xFFF8F5FF),
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           tanggal,
//                           style: const TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.w500,
//                             color: Colors.black,
//                           ),
//                         ),
//                         const Icon(
//                           Icons.arrow_forward_ios,
//                           size: 16,
//                           color: Colors.grey,
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               }).toList(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }