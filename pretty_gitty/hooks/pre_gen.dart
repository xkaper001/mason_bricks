import 'package:mason/mason.dart';

void run(HookContext context) {
   final attributeChoices = context.vars['attribute'];
  context.logger.info("Let's make your git pretty!");

  if (attributeChoices == 'official-flutter') {
    context.vars['official-flutter'] = true;
    context.logger.info('Generating official-flutter .gitattributes file...');
  } else if (attributeChoices == 'dart-specific') {
    context.vars['dart-specific'] = true;
    context.logger.info('Generating dart-specific .gitattributes file...');
  } else {
    context.vars['official-flutter'] = false;
    context.vars['dart-specific'] = false;
  }
}
