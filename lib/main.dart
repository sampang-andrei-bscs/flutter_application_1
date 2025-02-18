import 'package:flutter/material.dart';
import 'package:flutter_application_1/about_us.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume Page',
      theme: ThemeData(
        colorSchemeSeed: Colors.red,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.red,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: const ResumePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> teamMembers = [
      {
            'name': 'Andrei Sampang',
            'address': 'San Luis, Pampanga',
            'phone': '09123456789',
            'email': 'andrei@example.com',
            'image': 'https://rsv7mzgpyn.ufs.sh/f/RjBoytRTOWMiMi0YAle1b2WkvBclOSXGqRAxFdj0nyeh6uEC',
      },

       {
            'name': 'Carlos Viray',
            'address': 'San Luis, Pampanga',
            'phone': '09123456789',
            'email': 'carlos@example.com',
            'image': 'https://rsv7mzgpyn.ufs.sh/f/RjBoytRTOWMi9H1WHWjZiU8t3q76YpJKLjr1aEVgXfsSMFeo',
      },

      {
            'name': 'Jasper Pineda',
            'address': 'Sta Ana, Pampanga',
            'phone': '09123456789',
            'email': 'jasper@example.com',
            'image': 'https://rsv7mzgpyn.ufs.sh/f/RjBoytRTOWMi0Glt2voymWBePvnOGJYKCkx7wHR4hZXFqu65',
      },

         {
            'name': 'Aldrix Cayanan',
            'address': 'Candaba, Pampanga',
            'phone': '09123456789',
            'email': 'aldrix@example.com',
            'image': 'https://scontent.fcrk1-5.fna.fbcdn.net/v/t39.30808-1/447862182_3695529800773643_1508760750360648300_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=103&ccb=1-7&_nc_sid=e99d92&_nc_eui2=AeHds1Jh6QpPyv-hnHThTfPqo68PqZvDzC2jrw-pm8PMLRRPyPteLO88t8-AW7azZaqsIY_CtbB3cOn7yHEs959i&_nc_ohc=XKkC1zyHrScQ7kNvgF_LTaO&_nc_oc=Adj4tEULPEH37Ql1zxuuxJ34u8MUR9lK03VUnlBHYMtIXKuyEkkEzXrrpOqJ8i-Dtlg&_nc_zt=24&_nc_ht=scontent.fcrk1-5.fna&_nc_gid=AICxUEyKXjZS0n_uyrsxl2n&oh=00_AYBAmHF8LjKRBO55hZr5W6gjzPyjUFPvPU3cf7dDkrfirQ&oe=67BA7514',
      },

       {
            'name': 'Rendel Mendoza',
            'address': 'Arayat, Pampanga',
            'phone': '09123456789',
            'email': 'rendel@example.com',
            'image': 'https://scontent.fcrk1-5.fna.fbcdn.net/v/t39.30808-6/343620918_1395603711282722_2544299362672780523_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=f727a1&_nc_eui2=AeGckXjju91D3wbg4RriVuXhHrxDfIMI-bcevEN8gwj5t79ngPscH5bxRKqFQ7TYoZK5DHWi2mY3qPhv-fEktHEd&_nc_ohc=hCzKSS4nU9YQ7kNvgEQRrOV&_nc_oc=AdgQL_Goyl9QEGpxSeFWQ5I3FvHHwTk3EU9Rn8rlSZ30P-Jr7w8HmiCAZbGaJxRMw-w&_nc_zt=23&_nc_ht=scontent.fcrk1-5.fna&_nc_gid=AMvNgaSOhMqTEwV6HokjKpm&oh=00_AYBn8O1nkaS0SWogQsvzCTjsZfmOMTArbPgHKVfq52G9HQ&oe=67BA8F25',
      },
      
      
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Resume Page'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            tooltip: 'Information',
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return InfoPage(teamMembers: teamMembers);
                },
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: const [
          ResumeCard(
            name: 'Andrei Sampang',
            address: 'San Luis, Pampanga',
            phone: '09123456789',
            email: 'andrei@example.com',
            image: 'https://rsv7mzgpyn.ufs.sh/f/RjBoytRTOWMiMi0YAle1b2WkvBclOSXGqRAxFdj0nyeh6uEC',
          ),

          ResumeCard(
            name: 'Carlos Viray',
            address: 'San Luis, Pampanga',
            phone: '09123456789',
            email: 'carlos@example.com',
            image: 'https://rsv7mzgpyn.ufs.sh/f/RjBoytRTOWMi9H1WHWjZiU8t3q76YpJKLjr1aEVgXfsSMFeo',
          ),

          ResumeCard(
            name: 'Jasper Pineda',
            address: 'Mexico, Pampanga',
            phone: '09123456789',
            email: 'arvie@example.com',
            image: 'https://rsv7mzgpyn.ufs.sh/f/RjBoytRTOWMi0Glt2voymWBePvnOGJYKCkx7wHR4hZXFqu65',
          ),

          ResumeCard(
            name: 'Arvie Santos',
            address: 'San Luis, Pampanga',
            phone: '09123456789',
            email: 'andrei@example.com',
            image: 'https://rsv7mzgpyn.ufs.sh/f/RjBoytRTOWMiq6q66h7FWSpsdOIXCe9E4Jc3BkV8GZym2orn',
          ),

          ResumeCard(
            name: 'Aldrix Cayanan',
            address: 'Candaba, Pampanga',
            phone: '09123456789',
            email: 'aldrix@example.com',
            image: 'https://scontent.fcrk1-5.fna.fbcdn.net/v/t39.30808-1/447862182_3695529800773643_1508760750360648300_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=103&ccb=1-7&_nc_sid=e99d92&_nc_eui2=AeHds1Jh6QpPyv-hnHThTfPqo68PqZvDzC2jrw-pm8PMLRRPyPteLO88t8-AW7azZaqsIY_CtbB3cOn7yHEs959i&_nc_ohc=XKkC1zyHrScQ7kNvgF_LTaO&_nc_oc=Adj4tEULPEH37Ql1zxuuxJ34u8MUR9lK03VUnlBHYMtIXKuyEkkEzXrrpOqJ8i-Dtlg&_nc_zt=24&_nc_ht=scontent.fcrk1-5.fna&_nc_gid=AICxUEyKXjZS0n_uyrsxl2n&oh=00_AYBAmHF8LjKRBO55hZr5W6gjzPyjUFPvPU3cf7dDkrfirQ&oe=67BA7514',
          ),

           ResumeCard(
            name: 'Rendel Mendoza',
            address: 'Arayat, Pampanga',
            phone: '09123456789',
            email: 'rendel@example.com',
            image: 'https://scontent.fcrk1-5.fna.fbcdn.net/v/t39.30808-6/343620918_1395603711282722_2544299362672780523_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=f727a1&_nc_eui2=AeGckXjju91D3wbg4RriVuXhHrxDfIMI-bcevEN8gwj5t79ngPscH5bxRKqFQ7TYoZK5DHWi2mY3qPhv-fEktHEd&_nc_ohc=hCzKSS4nU9YQ7kNvgEQRrOV&_nc_oc=AdgQL_Goyl9QEGpxSeFWQ5I3FvHHwTk3EU9Rn8rlSZ30P-Jr7w8HmiCAZbGaJxRMw-w&_nc_zt=23&_nc_ht=scontent.fcrk1-5.fna&_nc_gid=AMvNgaSOhMqTEwV6HokjKpm&oh=00_AYBn8O1nkaS0SWogQsvzCTjsZfmOMTArbPgHKVfq52G9HQ&oe=67BA8F25',
          ),
          
        ],
      ),
    );
  }
}

class ResumeCard extends StatelessWidget {
  final String name;
  final String address;
  final String phone;
  final String email;
  final String image;

  const ResumeCard({
    super.key,
    required this.name,
    required this.address,
    required this.phone,
    required this.email,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(image),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  
                  const SizedBox(height: 4),
                  Text(address),
                  Text(phone),
                  Text(email),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
