import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/voice_call_controller.dart';

class VoiceCallView extends GetView<VoiceCallController> {
  const VoiceCallView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image or placeholder for voice call
          Positioned.fill(
            child: Image.network(
              'https://img.freepik.com/free-photo/closeup-handsome-smiling-man-wearing-headset-making-video-call_171337-863.jpg', // replace with your network image URL
              fit: BoxFit.cover,
            ),
          ),

          // Top bar with back button
          Positioned(
            top: 50,
            left: 20,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Get.back(),
            ),
          ),

          // Participant name or placeholder
          Positioned(
            top: 100,
            left: 20,
            right: 20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'John Doe', // Replace with participant name
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  'Calling...', // Status text (e.g., Calling, Connected)
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),

          // Bottom control buttons (always visible)
          Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Mute button
                CircleAvatar(
                  backgroundColor: Colors.black54,
                  child: IconButton(
                    icon: Icon(Icons.mic, color: Colors.white),
                    onPressed: () {
                      // Implement mute functionality
                    },
                  ),
                ),
                // Speaker button
                CircleAvatar(
                  backgroundColor: Colors.black54,
                  child: IconButton(
                    icon: Icon(Icons.volume_up, color: Colors.white),
                    onPressed: () {
                      // Implement speaker functionality
                    },
                  ),
                ),
                // End call button
                CircleAvatar(
                  backgroundColor: Colors.redAccent,
                  child: IconButton(
                    icon: Icon(Icons.call_end, color: Colors.white),
                    onPressed: () {
                      // Implement end call functionality
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
