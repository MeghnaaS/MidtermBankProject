import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F8E9),
      appBar: AppBar(
        backgroundColor: const Color(0xFF006A4E),
        title: const Text(
          'Common Cents',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color(0xFF006A4E),
              ),
              child: const Text('Sign In'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignInPage()),
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color(0xFF006A4E),
              ),
              child: const Text('Create New Account'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreateNewAccountPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F8E9),
      appBar: AppBar(
        backgroundColor: const Color(0xFF006A4E),
        title: const Text(
          'Sign In',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Username',
                hintText: 'Enter your username',
              ),
              onChanged: (value) {
                email = value;
              },
            ),
            const SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
              ),
              onChanged: (value) {
                password = value;
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color(0xFF006A4E),
              ),
              child: const Text('Sign In'),

              onPressed: () {
                if (email == 'meghnaasojy1@gmail.com' && password == 'asdfghjkl') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyAccountPage()),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CreateNewAccountPage extends StatefulWidget {
  @override
  _CreateNewAccountState createState() => _CreateNewAccountState();
}

class _CreateNewAccountState extends State<CreateNewAccountPage> {
  String firstName = '';
  String lastName = '';
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F8E9),
      appBar: AppBar(
        backgroundColor: const Color(0xFF006A4E),
        title: const Text(
          'Create New Account',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'First Name',
                hintText: 'Enter your first name',
              ),
              onChanged: (value) {
                firstName = value;
              },
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Last Name',
                hintText: 'Enter your last name',
              ),
              onChanged: (value) {
                lastName = value;
              },
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email',
              ),
              onChanged: (value) {
                email = value;
              },
            ),
            const SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
              ),
              onChanged: (value) {
                password = value;
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color(0xFF006A4E),
              ),
              child: const Text('Sign In'),
              onPressed: () {
                if (firstName == 'Meghnaa' &&
                    lastName == 'Sojy' &&
                    email == 'meghnaasojy1@gmail.com' &&
                    password == 'asdfghjkl') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyAccountPage()),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MyAccountPage extends StatefulWidget {
  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccountPage> {
  double balance = 1000;
  double debitAmount = 0;
  double creditAmount = 0;
  double loanAmount = 0;
  double totalLoanAmount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F8E9),
      appBar: AppBar(
        backgroundColor: const Color(0xFF006A4E),
        title: const Text(
          'My Account',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Balance: ',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  '\$${balance.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      labelText: 'Debit Amount',
                    ),
                    onChanged: (value) {
                      debitAmount = double.tryParse(value) ?? 0;
                    },
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color(0xFF006A4E),
                  ),
                  child: const Text('Withdraw'),
                  onPressed: () {
                    setState(() {
                      balance -= debitAmount;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      labelText: 'Credit Amount',
                    ),
                    onChanged: (value) {
                      creditAmount = double.tryParse(value) ?? 0;
                    },
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color(0xFF006A4E),
                  ),
                  child: const Text('Deposit'),
                  onPressed: () {
                    setState(() {
                      balance += creditAmount;
                    });
                  },
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Loan Amount to be Repayed: ',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  '\$${totalLoanAmount.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(labelText: 'Loan Amount'),
                    onChanged: (value) {
                      loanAmount = double.tryParse(value) ?? 0;
                    },
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color(0xFF006A4E),
                  ),
                  child: const Text('Take Loan'),
                  onPressed: () {
                    setState(() {
                      balance += loanAmount;
                      totalLoanAmount += loanAmount;
                    });
                  },
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      labelText: 'Repay Loan Amount',
                    ),
                    onChanged: (value) {
                      loanAmount = double.tryParse(value) ?? 0;
                    },
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color(0xFF006A4E),
                  ),
                  child: const Text('Repay Loan'),
                  onPressed: () {
                    setState(() {
                      balance -= loanAmount;
                      totalLoanAmount -= loanAmount;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
