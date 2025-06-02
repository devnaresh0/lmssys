import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpValidateScreen extends StatefulWidget {
  final String email;
  
  const OtpValidateScreen({
    Key? key,
    this.email = '',
  }) : super(key: key);

  @override
  State<OtpValidateScreen> createState() => _OtpValidateScreenState();
}

class _OtpValidateScreenState extends State<OtpValidateScreen> {
  final List<TextEditingController> _controllers = List.generate(6, (index) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(6, (index) => FocusNode());
  
  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  void _onChanged(String value, int index) {
    if (value.isNotEmpty && index < 5) {
      _focusNodes[index + 1].requestFocus();
    } else if (value.isEmpty && index > 0) {
      _focusNodes[index - 1].requestFocus();
    }
    
    // Check if all fields are filled
    bool allFilled = _controllers.every((controller) => controller.text.isNotEmpty);
    if (allFilled) {
      // All OTP fields are filled, you can trigger validation here
      _validateOtp();
    }
  }

  void _validateOtp() {
    String otp = _controllers.map((controller) => controller.text).join();
    print('OTP entered: $otp');
    
    // Add your OTP validation logic here
    // For example, call an API to verify the OTP
    
    // Show success message or navigate to next screen
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('OTP Validated: $otp'),
        backgroundColor: Colors.green,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3B4CB8), // Blue background color
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Logo
            Row(
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.layers,
                    color: Color(0xFF3B4CB8),
                    size: 20,
                  ),
                ),
                const SizedBox(width: 8),
                const Text(
                  'koekr',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'aft',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 40),
            
            // Title
            const Text(
              'Forgot Password',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            
            const SizedBox(height: 8),
            
            // Subtitle
            const Text(
              'Enter your email account to reset password',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),
            
            const SizedBox(height: 40),
            
            // Email field
            const Text(
              'Email',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            
            const SizedBox(height: 8),
            
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                widget.email,
                style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 16,
                ),
              ),
            ),
            
            const SizedBox(height: 32),
            
            // OTP Input Fields
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(6, (index) {
                return Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.white24,
                      width: 1,
                    ),
                  ),
                  child: TextField(
                    controller: _controllers[index],
                    focusNode: _focusNodes[index],
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                    decoration: const InputDecoration(
                      counterText: '',
                      border: InputBorder.none,
                    ),
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    onChanged: (value) => _onChanged(value, index),
                  ),
                );
              }),
            ),
            
            const SizedBox(height: 40),
            
            // Validate OTP Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: _validateOtp,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF2E3A8C), // Darker blue
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 0,
                ),
                child: const Text(
                  'Validate OTP',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            
            const Spacer(),
            
            // Resend OTP option
            Center(
              child: TextButton(
                onPressed: () {
                  // Add resend OTP logic here
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('OTP resent successfully'),
                      backgroundColor: Colors.green,
                    ),
                  );
                },
                child: const Text(
                  'Didn\'t receive code? Resend OTP',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}