import 'package:gizmos_settings_screen/gizmos_settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class More extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final sampleBooleanSetting = useState(false);

    return Scaffold(
      appBar: AppBar(
        title: Text('More'),
      ),
      body: SettingsSkin(
        delegate: CupertinoSettingsSkin(),
        child: SettingsScreen(
          sections: [
            SettingsSection(
              cells: [
                SwitchSettingsCell(
                  title: 'Status merchant',
                  value: sampleBooleanSetting.value,
                  onPressed: () {
                    sampleBooleanSetting.value = !sampleBooleanSetting.value;
                  },
                  onChanged: (bool value) {
                    sampleBooleanSetting.value = value;
                  },
                ),
              ],
            ),
            SettingsSection(
              header: 'Help center',
              cells: [
                DetailsSettingsCell(
                  title: 'Help',
                  value: '>',
                ),
                DetailsSettingsCell(
                  title: 'Contact us',
                  value: '>',
                ),
              ],
            ),
            SettingsSection(
              header: 'Settings',
              cells: [
                DetailsSettingsCell(
                  title: 'Help',
                  value: '>',
                ),
                DetailsSettingsCell(
                  title: 'Finance',
                  value: '>',
                ),
              ],
            ),
            SettingsSection(
              header: 'Logout',
              cells: [
                ButtonSettingsCell(
                  title: 'Logout',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
