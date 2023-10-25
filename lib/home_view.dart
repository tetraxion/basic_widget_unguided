import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndex = 0;

  void updateIndex(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
        ),
        title: const Text("Tokoh Pahlawan"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: IndexedStack(
          index: selectedIndex,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.blue, Colors.red],
                ),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/06d12bf8-0988-4262-afe1-7e38f0590584/d9z84uc-19b1a27a-f88e-4d0f-80b0-ae136b7d0295.jpg/v1/fill/w_1024,h_576,q_75,strp/maia_beach_04_by_photoplace_d9z84uc-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NTc2IiwicGF0aCI6IlwvZlwvMDZkMTJiZjgtMDk4OC00MjYyLWFmZTEtN2UzOGYwNTkwNTg0XC9kOXo4NHVjLTE5YjFhMjdhLWY4OGUtNGQwZi04MGIwLWFlMTM2YjdkMDI5NS5qcGciLCJ3aWR0aCI6Ijw9MTAyNCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.xcwMyDBOk334DfYcRnXW2VaHmfi9B_PVBpDhpzEJPxQ"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Color.fromARGB(255, 42, 41, 41).withOpacity(0.6),
                    BlendMode.darken,
                  ),
                ),
              ),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                            color: Colors.white,
                          ),
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(
                        "assets/image/tokoh.png",
                        width: 200.0,
                        height: 160.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Jenderal TNI (Anumerta) Ahmad Yani",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    ColumnAndRowContentWidget(),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.blue, Colors.red],
                ),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/9c7605df-1181-4c3c-aee4-e3d8fcf045a5/de6l7cm-bdc0b721-f88b-4e61-b682-58142877ad19.jpg/v1/fill/w_1024,h_683,q_75,strp/padar_island_by_porbital_de6l7cm-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NjgzIiwicGF0aCI6IlwvZlwvOWM3NjA1ZGYtMTE4MS00YzNjLWFlZTQtZTNkOGZjZjA0NWE1XC9kZTZsN2NtLWJkYzBiNzIxLWY4OGItNGU2MS1iNjgyLTU4MTQyODc3YWQxOS5qcGciLCJ3aWR0aCI6Ijw9MTAyNCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.Rj1ampcsTBBbvudQqfQbecIwuOIDtarHvjKF-iP8Ec8"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    const Color.fromARGB(255, 75, 75, 75).withOpacity(0.6),
                    BlendMode.exclusion,
                  ),
                ),
              ),
              child: Center(
                child: Column(
                  children: [
                    Card(
                      color: Color.fromARGB(236, 193, 193, 193),
                      child: Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                "data:image/jpeg;base64,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",
                              ),
                            ),
                            title: Text("Achmad Soebardjoe"),
                            subtitle: Text("john.doe@gmail.com"),
                            trailing: Icon(
                              Icons.search_rounded,
                              size: 24.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Card(
                      color: Color.fromARGB(236, 193, 193, 193),
                      child: Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://d22gwcrfo2de51.cloudfront.net/wp-content/uploads/2020/02/Soekarno_sq-1-e1585486258865.jpg"),
                            ),
                            title: Text("Ir. Soekarno"),
                            subtitle: Text("john.doe@gmail.com"),
                            trailing: Icon(
                              Icons.search_rounded,
                              size: 24.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Card(
                      color: Color.fromARGB(236, 193, 193, 193),
                      child: Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUVFRgVFRUYGBgYGRoYGBgYGBgYGBgYGBgZGhgYGBgcIS4lHB4rHxgYJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHhISGjQhISE0NDQ0MTQ0NDQ0MTE0NDQ0NDQ0NDQ0NDQxNDQ0NDQ0NDQ0MTE0PzQ0Pz80MT80NDE0P//AABEIAPMA0AMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAEAQIDBQYABwj/xAA+EAACAQIEAwYDBQUHBQAAAAABAgADEQQFITESIkEGUWFxgZEyUqETFCOxwUJicpLwByQzNLLR4RUWQ4LC/8QAGQEAAwEBAQAAAAAAAAAAAAAAAAECAwQF/8QAIhEBAQEBAAMBAAICAwAAAAAAAAECERIhMUEDURNCIjKB/9oADAMBAAIRAxEAPwCoenHpiLDhI0lHhc3I0bUfWWlLEI40PpOC4dM0JNIHVDEqJUHSMUFTcQqrmJIAIk+MPtVopveEUkbrJ1qXk9KleFzD8qKy+jL6ltK7DJaGoZlrKpoVOEhDRVeT4n5JTELRgaIWi8T8kgeKHEivOvK8YXkJV5OjwFTJVaHjB0WHj1YQQNJFeLxHRPEI4GQAxwaTw04iiQgx4aAScOt7+n6x4jFaOgRbxG2PlFjai6HyjLj50FSSJXINwYHeKHM9O2OVocHnJGj6iW9HFI40MxavJadYqbg2kXEvxU02YUrtLHAYpdm0MymDzgjR9RLehiEcXBmes1UrYU7HaSgTMYbGOniJd4TMFfrrM+LHThEvA8xzFKC8dRrAmw6km17Whzo6NvBsTmNJNHqIp7iwB9ph8y7S1sRy0x9mnXXmPiT+glScKb6C53J6mXP4/wC0+X9N1iu1eGQHhLOe5QQP5msJQ4rtjiGPIiIOlwXb30H0guCyR21OkPTs8O+OTMHaBp9qsXfWqgHiiW+gvNDge1bgfiorjq9PS3/qSR9RM5mOTlNVGglYuKZSAW0G+h/Qgx3OdT4XbHreAzGnWF0e/ep0YeYhgM8twGMNweLhYfC6k3B6cRIH1HrN7lGaCqCrWDr8QHUdGHhMtY4uaW6tJVeCho4NM7lXRN49WgoeSK8m5OUSGkqmCq8lVpJp7xtQjhPkYl4jHQxDj5wIihZpMd2Qr014gQ/gN5U1MC6fGjL5jSenLmuTlgAKZKqGTKklQaw+DiM4RwL2i0a5U7kGXTVOUSkx663il6dnFxhM4IsG2lzh8WjaqdZhVeEUK7A6ExXEvw5p6HSzMoLsdB1mSzzM2xNQEAhF0QeureZkH3p6tqXzbnw6zT4XK6YC2XbSRyZV3yVeAy0kAS+wWUAWvDsPSA2ELDSbqnIamHAFgJKtIR6LJeGQpV4/CBlInnuaUCjkdO+09RqpcGYPtFQ597Hrf85pi8qdRWYN+CxPp4g6Wv1B+nuJa5dmIRlcNZlI4e7gJsUPh0t0tKlqbAcjKOIXKNtcbjUeGkCAIuCCPDul2dTLx67TzWmyhgdCAfeOGaJ8w955ctZgi3Y3Gh8OoB+sb96/ePvI/wAavJ6p/wBUT5h7xP8ArFP5hPLvvXj9Z33kd/1i/wAY83qgzqmP2h7yRM+pDdh7ieUDEL3yT7yvfJv8Jzb1Q9oaXzD3if8AcdE3HEPeeXfe1nDEKZF/gv8Aa5uV6XhQCBeS43Bo4syg+kZhksB5wyvuJSGJzLskpJZOU93SU4yVg3Awt4z0YneUmYKOMES5ql4xk8VR4OWBplZq3sZZZt8UgyqoeI20lS2TpcArkD6+EauAVAS3SbTKl4rgys7SYUKDYdITdtHjGfyBbuz+gmyw97CZTJNEHjf85rMG+gi37oz8G04QkHSGUZChVOnH8MjR/GEUmiMO6WBmOztQGJa3W3jodJt68qMfli1Ab6Ry+yry+s5Zj0ufbpHJTJueomjzHs4U2I7/APiBUMKqmxYXNgLneb+Us9I8VZiVIpE/vDX3lcDNJmmEKKUbqAR6GUxwsedJ1As6T/YRy4eX2FwMCYtzDUwslGDEXlD4rdZNTvLBMvEmpZeCbSdbis5tepU/1hVXpBR084TU6TmaBnG8qMUvPLZxvKvE/GIQMpng54Pk9MljC8+0eDZNUs5mk+I/WiypSGkXaReWGZSpLyHtaQF0kz6pkctGgHcSPqZpsANpjbvx2QEk62lxhsdVp2+1RlHzWNveXrNTK1V+a0IfEKguSBKxMUHsyai3SVGMzJS5VRxkdx5Qe6/X0kSez6vaucAmya/13SbC4usCbry763vMsc2qqp4eBAOvCP8A6Ma+dYlyqI51YJw8CAlibW+G41j8R5N5XxqKvG7qgtuxCj6yjxHa3DqeFA9VugQWHud/QGV2B7PfeOF6hFtDcElz5sxNpqcFlNGgLIgHjuT6xczD9s1ifvmIF2QUU6X+I/r9BFyrIfiPG4axuyMUa57mGv1mw+y4wV75XIGUMBvxW9dtYTQ4GfBJwXama7IoUsSt/HewJMzWc5cq8L0wwR7gqRqjra6n308jNdQxD3ZHQKwGvDsbDcXiPhVYG43bi9bWvCa4Vjzz7t3iEUMJNBnmEVV0lZhaLEXEvy7BxGcKBDMFlvGLyF6LnUS6yhrJFaIrhhLHhiUMJw1FvsSLwpnPGZ2JaxBmGtXrXEa0D84RU6Qfp6wip0loDN1lZifjEtH3MrMT8YhBWX7QjngmSEBzeG9ovjlblQ5jNJ8TfraZSwLaSh7eY1ldaYQ6rxcZ+Hc6DvOnXvlzkC6wbtmgKWPp5yc86Kxj4KvS56qslxe/EL2PkdBOZ2SxPEQy3BBOvS2k0GcYpalNQSCyqFPcdNCJBlgBUDr/AFtNOlxT5NgXruU4+GwvbfW/0mhyzAKcM62tURyr23UkDhv3AjSQdmaFsRUPQEL7ATVY/CHiNWkOZk4HTQCovTX5gdjJ1r3w5GTw2E4lZHG51uNQR3GWSZYiJZAQwKsCfnVwwI7tvrGpm+GuRV4qbjQqyMH/ACN4iu2JdadAPwcQL1WXhAUa2W/Uw9m1mGpL8QUC4v7ySpCFQKoAGwt7SFzraZmfh9DB8fZGv0bqOhkzNadiBdVPc36QAGrSJfjN7leEevU+MW3dsNI+tigDw6Xt+cjpnSBKXtCvLIsoUFDDs0AIN4NlwABtK/AeuinSA4Go3NbvMslHKfWVGDexbzMIKlpkl9Y/E2BF43Dnni4/cGY6n/Jrj41pk7HQSAbSVjoJozQudZV457OIdVbWVOYtzLHAou0LXa8r8qPMYXnb80ByrVrCaT4i/WzyBtYL2yF1EIyQW3gfaury2kT6d+M1UJ4Lg7dCLg/7GS0KlZhdFVR1Y/pGD4Y3DVzwMl9dhNCXXZNLBizXJbU981OOxVJAGqVURdrsbXPcLzz3Kkrh+FHCg6Hi1GnW3fNfh6fCwDsHNhqVA9ANbSLPfs5U+IVDZkKuOhFjp4GGYOuItIINbDXfS0iqhQbiRTWTYiRcdzBFa4vFVocMW5klFwQVMEeoLRmGqc0ATE4cByfATqY0MIxIBdU4rO4PAOjEa29r+0Ho7awCmz24XSMyg8hknaAchkWUfBK/CGoORpSYX4m85d0m5G9ZSUDzN5mEFTYY88dmR2jMMeeOzIbTPX/aNMtcDpJKnwiV6ZlSJsHHvJWzGntxi/nK4gysdTKbM21EsKuPS/xD3lTmuKQ25hHISlzTUyDJH4XuYuPrgneJlfBclj9Zp+J/Wyy6sGOkr+1Cct52U4lBswgvaPEBhYGRPp/ioUcsAbRg3jDhUAWC2uDNIQzA4oK1ybecvRmVI2cODYagb+0yOJoKwDa36iWeAqU1AsguOoUX94tZglaJM44hy0nPjdQPcmPH2zDisqjuJux9tILga6tbRrj5pbcZIkVTsFU5LGPDwNmt4RiVdYgNZ5Lh9NZBTS5AAuTsBNTlWUhLM+rdF6L5+MVposqy0l/tqg5rcin9kEWv52JlB2ozVMJWCsjkVAXUrawsbMNT4j3m4qMAL+s8U7X5395xBKn8NLqniL6v6kewEeJ5VOrxo87qq9MMpuGAIPgZDlHwGZnA5mQn2Tar+yeq/wDE0OV4hQm8rU56KXo9DytKjDUyWbzMsExK2OsZgHTmiUGoizx+YHaJWccekbjHvI1PcXmskKvjONf976yq1nWnVZHP5LFq/jONf96V1opWHC8hhreM5q0DAiWMf/hdHJiiNiR6xWxjHck+cCAj1pxyT+j7U/3kwrDPA0p2kyOF3i1wSp+OxvNBldZSNhMnVxI6RKGPdDpJ1nsVNPScPiU2NpJUxQ6TE4PFVKis4NuHQjrtfSOp5odiTfu0X67zO5q/JpK+JJ0EmwFBmYAC5Ow6mQ9n8sq4k6EInUgXP8x6+Ws9DyzK0oLZRdurHVj6yLeGjyfKlpDibVzufl8BLQmNBlfnubphqL1n2UWVersfhUecjnabLf2j9ovs0+7Uzz1Fu5H7CHp5t+XnPLRJsdjXr1Hq1Dd3Yse4dwHgBYekhE6s58Yx1e09WhdHFlRvAgYrnaOwSjzmXDoYqZsB1gCsCLHUSJsOOht+UPGH5VbjNlkq5qDKH7q3dJVwzjdSIrjNPOtRwwTbmMfDWmtwGHRwQR1kOcZSoI4NNNYvP8peLNDDct45cLD8dgzTUa3vB0cW3leXS5EK4S5AHWWtbIwqcXW0jypQag6zSZknJYSdasqpIx9PCd8nqPSp76t3CTY0lEv1OglETfeVO6TfQjE4oMeVeEfWBs95JGlJfPRGKDOMkEPyTBfbV6dPozji/hHM30BivqBb9i0Ul+O/COYgbmw2HiZf0sjeo9nRFvchQL8Iv8x8CIDlOXf3h1TRA9y3QKNhfxmmr12L8CC/CeQm9xpwk76kg2mG777Gsnpc5EEo8NAEWI5df2rXtr3gH+WX1plVyNigfiK1VIdTfZlNxeX2WY0VUD2s3wuvyuPiEyqhFRwoLMQABck6AAbkzxjtn2iOMq2U/hJcIO87Fz4np3Dzl7/aJ2m4icJSPKP8Vh1PyA93f7TAgTb+PHPdRrRFiicBFmrN04zokAWdOnQCWlWZestEzHiFnAPjsf8AmU6yRItZlVnVjU5N184mfYxksoW9xvHZMN/OLng19Jj/ALK/FTmi3po3fK9MmqMOIbS2zUfhJLnCD8FfKVNcg52s3kdMpWCtvNbi0FpnKH+ZHlNLjdhFq9p5ZDtTVHEiDoCffb9ZRQ3PKnFWfwsvsIAp0m2PUZa+nTohizQEWaTseOBqtf5E4U8XqGwt6A+8zgE0XZ2nxIF6M/F5kCw/WZ67IeZ7brC4f7LDKGAu/M217nXX3EXs/RAqIwHKSTvpcrYG0mr4UlFBZmYi1zYbW6L5b2kWVUHWol20Vr2Fr/Cd/CctatXUew8ZkO1+f/dEKUiBXqjw5F15yO/oJc53miYak1Z9baIvVnOyj+tp41j8Y9Z3q1DdnNz3DuUeAGkvGe+6nWuBydddSdddYoiR03ZkizjOgHCJFIihIA2OAnRwEA4CdTnMZJSEVOfWoyTr5xc8OvpEyU7+c7O9T6TL/ZYXN1/BTz/SW+CH4S+Uqs3H4Cf10lxhP8JPKF+HFAmmKmhzN7IW7hf2EzwH96lz2hfhoOf3fz0hfsEefO3EST1JP1iARBFE6YyLOnTowWa7sxyhCAW028SbnXb3mTRb2HfNt2ep6KALWW9zsNDa3+8x/kqsxtMOxamdLsQbKdLX0tubH1nYR0S4A4VQHiLCwW2hBO3wgG4gWDqkFUXS/MSbWtqLX6kneZjtxn/FfDo1x/5D63CC319pjnPbxpbxT9rM/OKq3UkUk5UHf3uR3n8pSCIoizok5OMbenTp06AdOnThAHCcT0EbHEWgZVWOjQZzGAINTJ6YkKiT0otHGlyTr5xc33PlEyXc+cjzs6nymX6pHnLfgp/XSW2DP4S+UpM1FqKen5S4wH+EvlC/DilU/wB6hvbKtaiq/Mw9hqYCv+akPbXE3dEv8K39THJ2xNvqs4sdEXadOjqCxIs6MJsODxC02mVlgAL2BAv3gWAHDpbp1mLw5sy+YmxOLREH7tmY31IOv66esw/kXlY51mi0KPFcl2BVFB3uNWPgO8WnnpJJLEkkm5J3JO5Mnx+Kaq7Oep0F/hXoBIBKznxidXrrTpwMWURYoiTogW8ScdIggDlE4TiZ0AcBEY6xYxTA0gk1EyACTU4r8ONPkvXzkedx+S7nzjM76+Uyn1QTNmvRT0/KXGXD8JfKVGZp+Anp+UustH4S+UL8E+qRR/evSZ/Oq/HWdv3rDyAtLnMa3BWduoQ28zpMzfWXmfqdVJEEcwjVm36ks6dFWMHpuvmIXjsSTZAeVdyNLmAk3jhIufY6dHCNAi3hQWdEEcIgQzfdlOwq18MauILoagBpcJF1X5yCLHi7u63fMhk1Km+IpJWNkZ0DnXYnbTvNhfpefQCiwtawGngLdJn/ACas9ReZ15ev9l9QseLEpw30IRrkXG4vYG1+p1Eru1vY18KDVpFno/tE246e2r23W/7XTrPU8ZnWGpf4lemh7mdb/wAt7zP5h28wKAgF6uhBVEPCR1BL2EzzvVvw7mPHrxyybGMjO7U0KIzEohNyqnZb9bSMidCDHOk5BpGOdbSUQpFWE4X4h5j84OsLwg5l8x+cVXlocjGrec7N1HFr4R2SLzG/fH5yg4vSY/pou0Cj7BOHwk+CxarSW51AlLjseOAJe9pU1MUx66S5nsFvE3aGurtcSmQSfEmQU5pmcZ2pSIxZIRIll/pU+KI0RwgZVEdOnQBBFJnRYg4CKIwGOEVB6OVIZTYqQwPcQbg+8Mxea4iqb1a9R/4nYj+W9h7QCPEVgKsW8bFEAcDOM4Cc5gaADmksjXcyZTAiiGYHV0/iX/UIGIbl450/jX/UIqvK6y82LecBzWq19zOnTLP1VUjRs6dNmdRYjaQ0506H6SVpF1nTo6D45Yk6WD506dJDohizoAgiiLOhQ6OWdOiDhHTp0QPEY06dA0Sbnzkqzp0Chyw/LfiT+NfzE6dDXxUf/9k="),
                            ),
                            title: Text("Moch Hatta"),
                            subtitle: Text("john.doe@gmail.com"),
                            trailing: Icon(
                              Icons.search_rounded,
                              size: 24.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Card(
                      color: Color.fromARGB(236, 193, 193, 193),
                      child: Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                               "data:image/jpeg;base64,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"),
                            ),
                            title: Text("Kihajar Dewantara"),
                            subtitle: Text("john.doe@gmail.com"),
                            trailing: Icon(
                              Icons.search_rounded,
                              size: 24.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Card(
                      color: Color.fromARGB(236, 193, 193, 193),
                      child: Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                "data:image/jpeg;base64,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",
                              ),
                            ),
                            title: Text("Achmad Soebardjoe"),
                            subtitle: Text("john.doe@gmail.com"),
                            trailing: Icon(
                              Icons.search_rounded,
                              size: 24.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Card(
                      color: Color.fromARGB(236, 193, 193, 193),
                      child: Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                "data:image/jpeg;base64,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",
                              ),
                            ),
                            title: Text("Achmad Soebardjoe"),
                            subtitle: Text("john.doe@gmail.com"),
                            trailing: Icon(
                              Icons.search_rounded,
                              size: 24.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Card(
                      color: Color.fromARGB(236, 193, 193, 193),
                      child: Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                "data:image/jpeg;base64,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",
                              ),
                            ),
                            title: Text("Achmad Soebardjoe"),
                            subtitle: Text("john.doe@gmail.com"),
                            trailing: Icon(
                              Icons.search_rounded,
                              size: 24.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Card(
                      color: Color.fromARGB(236, 193, 193, 193),
                      child: Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                "data:image/jpeg;base64,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",
                              ),
                            ),
                            title: Text("Achmad Soebardjoe"),
                            subtitle: Text("john.doe@gmail.com"),
                            trailing: Icon(
                              Icons.search_rounded,
                              size: 24.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Card(
                      color: Color.fromARGB(236, 193, 193, 193),
                      child: Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                "data:image/jpeg;base64,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",
                              ),
                            ),
                            title: Text("Achmad Soebardjoe"),
                            subtitle: Text("john.doe@gmail.com"),
                            trailing: Icon(
                              Icons.search_rounded,
                              size: 24.0,
                            ),
                          ),
                        ],
                      ),
                    ),SizedBox(height: 20.0),
                     Card(
                      color: Color.fromARGB(236, 193, 193, 193),
                      child: Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                "data:image/jpeg;base64,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",
                              ),
                            ),
                            title: Text("Achmad Soebardjoe"),
                            subtitle: Text("john.doe@gmail.com"),
                            trailing: Icon(
                              Icons.search_rounded,
                              size: 24.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.green,
              height: 600,
            ),
            Container(
              color: Colors.blue,
              height: 600,
            ),
            Container(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (newIndex) => updateIndex(newIndex),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list_alt_outlined,
            ),
            label: "List",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "User",
          ),
        ],
      ),
    );
  }
}

class ColumnAndRowContentWidget extends StatelessWidget {
  const ColumnAndRowContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Text(
          "Nama : Jenderal TNI (Anumerta) Ahmad Yani",
          style: TextStyle(color: Colors.white, fontSize: 12.0),
        ),
        Text(
          "Lahir : Purworejo, Jawa Tengah, 19 Juni 1922",
          style: TextStyle(color: Colors.white, fontSize: 12.0),
        ),
        Text(
          "Wafat : Jakarta, 1 Oktober 1965 (Usia 39 thn)",
          style: TextStyle(color: Colors.white, fontSize: 12.0),
        ),
        Container(
          child: Text(""),
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Column(
              children: <Widget>[
                Text(
                  "Deskripsi",
                  style: TextStyle(color: Colors.white, fontSize: 12.0),
                ),
              ],
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        "\u2003Jenderal Ahmad Yani, seorang pahlawan nasional Indonesia, terutama dikenal atas perannya dalam perjuangan kemerdekaan negaranya. Meskipun informasi tentang hobi pribadinya tidak tersedia secara luas, kehidupan dan karirnya lebih didedikasikan untuk tugas-tugas militer, strategi perang, dan kepemimpinan dalam perjuangan Indonesia. Sebagai seorang panglima militer, hobi dan waktu luangnya mungkin selalu terkait dengan tugas-tugasnya yang memerlukan tekad dan pengabdian yang tinggi.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontFamily: 'Serif',
                            fontWeight: FontWeight.normal)),
                    SizedBox(height: 8.0),
                    Text(
                        "\u2003Sementara itu, motto hidup Jenderal Ahmad Yani tercermin dalam semangat patriotisme dan kesetiaannya kepada Indonesia. Ia adalah sosok yang berani dan bertanggung jawab dalam memimpin pasukannya, dan moto \"Bertempur sampai Tetes Darah Terakhir\" mencerminkan tekadnya untuk melindungi dan membela tanah air hingga titik darah penghabisan. Meskipun wafat pada usia muda dalam peristiwa G30S/PKI pada tahun 1965, warisan Jenderal Ahmad Yani tetap menjadi inspirasi bagi banyak orang Indonesia dalam menjaga kemerdekaan dan persatuan negara mereka.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontFamily: 'Serif',
                            fontWeight: FontWeight.normal)),
                    SizedBox(height: 8.0),
                    Text(
                        "\u2003Ahmad Yani lahir pada 19 Juni 1922 di Purworejo, Jawa Tengah. Ia adalah salah satu tokoh yang berperan dalam menjaga dan mempertahankan kemerdekaan Indonesia. Sayangnya, pada usia muda, yaitu pada tanggal 1 Oktober 1965, ia wafat dalam peristiwa G30S/PKI. Meskipun meninggal pada usia muda, warisan dan jasanya tetap menjadi inspirasi bagi banyak orang Indonesia dalam menjaga kemerdekaan dan persatuan negara mereka.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontFamily: 'Serif',
                            fontWeight: FontWeight.normal)),
                    SizedBox(height: 8.0),
                    Text(
                        "\u2003Pengabdiannya kepada negara selalu diingat dan dihargai. Jenderal Ahmad Yani adalah contoh nyata dari tekad dan semangat juang yang tinggi untuk Indonesia. Selama hidupnya, ia selalu memperjuangkan kemerdekaan negara ini dan berkomitmen untuk menjaga persatuan dan kesatuan bangsa.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontFamily: 'Serif',
                            fontWeight: FontWeight.normal)),
                    SizedBox(height: 8.0),
                    Text(
                        "\u2003Warisan dan jasa-jasa Jenderal Ahmad Yani menjadi inspirasi bagi generasi muda Indonesia untuk tetap menjaga dan menghormati nilai-nilai kemerdekaan serta semangat patriotisme yang tinggi. Ia adalah salah satu tokoh pahlawan yang abadi dalam sejarah perjuangan Indonesia.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontFamily: 'Serif',
                            fontWeight: FontWeight.normal)),
                    SizedBox(height: 8.0),
                    Text(
                        "\u2003Selain menjadi seorang panglima militer yang ulung, Ahmad Yani juga dikenal sebagai pemimpin yang mendukung modernisasi Angkatan Darat Indonesia. Ia berperan penting dalam mengembangkan kemampuan militer dan pertahanan negara. Keberhasilan-keberhasilan dalam karir militer dan kepemimpinannya membuatnya diakui di tingkat nasional dan internasional.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontFamily: 'Serif',
                            fontWeight: FontWeight.normal)),
                    SizedBox(height: 8.0),
                    Text(
                        "\u2003Kepergiannya yang tragis pada usia muda telah meninggalkan warisan yang berharga bagi bangsa Indonesia. Pahlawan seperti Jenderal Ahmad Yani mengingatkan kita akan pentingnya menjaga kemerdekaan dan persatuan negara serta mengabdikan diri bagi kepentingan rakyat dan bangsa.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontFamily: 'Serif',
                            fontWeight: FontWeight.normal)),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
