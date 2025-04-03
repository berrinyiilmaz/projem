import 'package:flutter/material.dart';
import '../../core/const.dart';
import '../../core/localizations.dart';

class LoadPlanRegister extends StatefulWidget {
  const LoadPlanRegister({super.key});

  @override
  _LoadPlanRegisterState createState() => _LoadPlanRegisterState();
}

class _LoadPlanRegisterState extends State<LoadPlanRegister>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        backgroundColor: colorScheme.surfaceContainer,
        elevation: 0,
        title: Text(
          localizations.getTranslate('loadplan_register'),
          style: TextStyle(color: colorScheme.onSurface),
        ),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: colorScheme.primary,
          tabs: [
            Tab(
              icon: Icon(Icons.info, color: colorScheme.onSurface),
              text: localizations.getTranslate('info'),
            ),
            Tab(
              icon: Icon(Icons.checklist, color: colorScheme.onSurface),
              text: localizations.getTranslate('checklist'),
            ),
            Tab(
              icon: Icon(Icons.description, color: colorScheme.onSurface),
              text: localizations.getTranslate('description'),
            ),
            Tab(
              icon: Icon(Icons.attach_file, color: colorScheme.onSurface),
              text: localizations.getTranslate('attachments'),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildInfoTab(localizations, colorScheme),
          _buildChecklistTab(localizations, colorScheme),
          _buildDescriptionTab(localizations, colorScheme),
          _buildAttachmentsTab(localizations, colorScheme),
        ],
      ),
    );
  }

  Widget _buildInfoTab(
      AppLocalizations localizations, ColorScheme colorScheme) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          _buildTextField(localizations.getTranslate('team'), colorScheme),
          _buildTextField(localizations.getTranslate('flight_no'), colorScheme),
          _buildTextField(localizations.getTranslate('tail'), colorScheme),
          _buildTextField(
              localizations.getTranslate('park_position'), colorScheme),
          _buildTextField(
              localizations.getTranslate('operation_officer'), colorScheme),
          _buildTextField(
              localizations.getTranslate('postmaster'), colorScheme),
        ],
      ),
    );
  }

  Widget _buildChecklistTab(
      AppLocalizations localizations, ColorScheme colorScheme) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            _buildLabeledDropdown(
              localizations.getTranslate('cargo_flag_label'),
              localizations.getTranslate('cargo_flag'),
              dropdownChoices['cargo_flag']!,
              colorScheme,
            ),
            _buildLabeledDropdown(
              localizations.getTranslate('special_load_picture_label'),
              localizations.getTranslate('special_load_picture'),
              dropdownChoices['special_load_picture']!,
              colorScheme,
            ),
            _buildLabeledDropdown(
              localizations.getTranslate('loading_instructions_label'),
              localizations.getTranslate('loading_instructions'),
              dropdownChoices['loading_instructions']!,
              colorScheme,
            ),
            _buildLabeledDropdown(
              localizations.getTranslate('pushback_green_company_label'),
              localizations.getTranslate('pushback_green_company'),
              dropdownChoices['pushback_green_company']!,
              colorScheme,
            ),
            _buildLabeledDropdown(
              localizations.getTranslate('loading_change_label'),
              localizations.getTranslate('loading_change'),
              dropdownChoices['loading_change']!,
              colorScheme,
            ),
            _buildLabeledDropdown(
              localizations.getTranslate('loadplan_signature_time_label'),
              localizations.getTranslate('loadplan_signature_time'),
              dropdownChoices['loadplan_signature_time']!,
              colorScheme,
            ),
            _buildLabeledDropdown(
              localizations.getTranslate('loadsheet_loadplan_match_label'),
              localizations.getTranslate('loadsheet_loadplan_match'),
              dropdownChoices['loadsheet_loadplan_match']!,
              colorScheme,
            ),
            const SizedBox(height: 20),
            _buildButtonRow(localizations, colorScheme),
          ],
        ),
      ),
    );
  }

  Widget _buildDescriptionTab(
      AppLocalizations localizations, ColorScheme colorScheme) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            maxLines: 5,
            style: TextStyle(color: colorScheme.onSurface),
            decoration: InputDecoration(
              hintText: localizations.getTranslate('description'),
              hintStyle: TextStyle(
                  color: colorScheme.onSurfaceVariant), // Updated hint color
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: colorScheme.outline),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: colorScheme.outline),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: colorScheme.primary),
              ),
              filled: true,
              fillColor: colorScheme.surfaceContainer,
            ),
          ),
          const SizedBox(height: 20),
          _buildButtonRow(localizations, colorScheme),
        ],
      ),
    );
  }

  Widget _buildAttachmentsTab(
      AppLocalizations localizations, ColorScheme colorScheme) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              border: Border.all(color: colorScheme.outline),
              borderRadius: BorderRadius.circular(10),
              color: colorScheme.surfaceContainer,
            ),
            child: Center(
              child: Text(
                localizations.getTranslate('attachments'),
                style: TextStyle(color: colorScheme.onSurface),
              ),
            ),
          ),
          const SizedBox(height: 20),
          _buildButtonRow(localizations, colorScheme),
        ],
      ),
    );
  }

  Widget _buildTextField(String hint, ColorScheme colorScheme) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        style: TextStyle(color: colorScheme.onSurface),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
              color: colorScheme.onSurfaceVariant), // Updated hint color
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colorScheme.outline, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colorScheme.primary, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          filled: true,
          fillColor: colorScheme.surfaceContainer,
        ),
      ),
    );
  }

  Widget _buildLabeledDropdown(String label, String hint, List<String> choices,
      ColorScheme colorScheme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
              color: colorScheme.onSurface, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        _buildDropdown(hint, choices, colorScheme),
      ],
    );
  }

  Widget _buildDropdown(
      String hint, List<String> choices, ColorScheme colorScheme) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: colorScheme.surfaceContainer,
        ),
        child: DropdownButtonFormField<String>(
          decoration: InputDecoration(
            // hintText: hint,
            // hintStyle: TextStyle(
            //     color: colorScheme.onSurfaceVariant),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: colorScheme.outline, width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: colorScheme.primary, width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            filled: true,
            fillColor: colorScheme.surfaceContainer,
          ),
          style: TextStyle(color: colorScheme.onSurface),
          items: choices.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(color: colorScheme.onSurface),
              ),
            );
          }).toList(),
          onChanged: (String? newValue) {
            // Handle value change here
          },
        ),
      ),
    );
  }

  Widget _buildButtonRow(
      AppLocalizations localizations, ColorScheme colorScheme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: colorScheme.primary,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            localizations.getTranslate('save'),
            style: TextStyle(
              color: colorScheme.onPrimary,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: colorScheme.primary, width: 2),
            ),
          ),
          child: Text(
            localizations.getTranslate('cancel'),
            style: TextStyle(
              color: colorScheme.primary,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
