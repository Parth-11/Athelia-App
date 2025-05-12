import 'package:athelia/widgets/profile/change_password.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _lastName = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _address = TextEditingController();
  final TextEditingController _goodreads = TextEditingController();
  final TextEditingController _hobbies = TextEditingController();
  final List<Map<String, TextEditingController>> _customFields = [];

  // Add TextEditingControllers for change password dialog fields
  final TextEditingController _currentPassword = TextEditingController();
  final TextEditingController _newPassword = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();

  void _showAddCustomFieldDialog() {
    final titleController = TextEditingController();
    final contentController = TextEditingController();

    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('Add Custom Field'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: titleController,
                  decoration: const InputDecoration(labelText: 'Field Title'),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: contentController,
                  decoration: const InputDecoration(labelText: 'Field Content'),
                  maxLines: 2,
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () {
                  if (titleController.text.isNotEmpty &&
                      contentController.text.isNotEmpty) {
                    setState(() {
                      _customFields.add({
                        'title': titleController,
                        'value': contentController,
                      });
                    });
                    Navigator.pop(context);
                  }
                },
                child: const Text('Add'),
              ),
            ],
          ),
    );
  }

  void _saveProfile() {
    // Collect and save data here
    Navigator.pop(context); // Or show a confirmation
  }

  void _showChangePasswordDialog() {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('Change Password'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: _currentPassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Current Password',
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: _newPassword,
                  obscureText: true,
                  decoration: const InputDecoration(labelText: 'New Password'),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: _confirmPassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Confirm New Password',
                  ),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_newPassword.text.isNotEmpty &&
                      _confirmPassword.text.isNotEmpty &&
                      _newPassword.text == _confirmPassword.text) {
                    // Handle password change (e.g., update via API or local storage)
                    // You would typically call a backend API here.
                    Navigator.pop(context);
                    // Show a success message or update the UI
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Password changed successfully!'),
                      ),
                    );
                  } else {
                    // Show an error message
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Passwords do not match or are empty.'),
                      ),
                    );
                  }
                },
                child: const Text('Change Password'),
              ),
            ],
          ),
    );
  }

  @override
  void dispose() {
    _firstName.dispose();
    _lastName.dispose();
    _email.dispose();
    _phone.dispose();
    _address.dispose();
    _goodreads.dispose();
    _hobbies.dispose();
    _currentPassword.dispose();
    _newPassword.dispose();
    _confirmPassword.dispose();
    for (var field in _customFields) {
      field['title']?.dispose();
      field['value']?.dispose();
    }
    super.dispose();
  }

  Widget _buildTextField(
    String label,
    TextEditingController controller, {
    int maxLines = 1,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$label *", style: const TextStyle(fontWeight: FontWeight.w500)),
          const SizedBox(height: 6),
          TextField(
            controller: controller,
            maxLines: maxLines,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              isDense: true,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCustomField(
    TextEditingController labelController,
    TextEditingController controller, {
    int maxLines = 1,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Label is now a TextField that is editable
          TextField(
            controller: labelController,
            maxLines: 1, // Keep it single-line or adjust for multi-line
            style: const TextStyle(fontWeight: FontWeight.w500),
            decoration: const InputDecoration(
              border: InputBorder.none, // No border for label
              isDense: true,
              hintText: "Label", // Default text or hint
            ),
          ),
          const SizedBox(height: 6),
          // Actual input field
          TextField(
            controller: controller,
            maxLines: maxLines,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              isDense: true,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Edit Profile")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Profile picture with edit icon
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                const CircleAvatar(radius: 50, backgroundColor: Colors.grey),
                Positioned(
                  right: 4,
                  bottom: 4,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      color: Colors.teal,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.edit,
                      size: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Main Fields
            _buildTextField("First Name", _firstName),
            _buildTextField("Last Name", _lastName),
            _buildTextField("Email", _email),
            _buildTextField("Phone Number", _phone),
            _buildTextField("Address", _address),
            _buildTextField("Goodreads Username/Link", _goodreads),
            _buildTextField("Hobbies & Interests", _hobbies),

            const SizedBox(height: 10),

            // Custom Fields
            for (int i = 0; i < _customFields.length; i++) ...[
              _buildCustomField(
                _customFields[i]['title']!,
                _customFields[i]['value']!,
                maxLines: 2,
              ),
            ],

            Align(
              alignment: Alignment.centerRight,
              child: TextButton.icon(
                onPressed: _showAddCustomFieldDialog,
                icon: const Icon(Icons.add),
                label: const Text("Add Custom Field"),
              ),
            ),

            const SizedBox(height: 20),

            // Save Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: _saveProfile,
                child: const Text("Save", style: TextStyle(fontSize: 16)),
              ),
            ),

            const SizedBox(height: 12),

            // Change Password
            ChangePassword(onTap: _showChangePasswordDialog),
          ],
        ),
      ),
    );
  }
}
