MODULE_NAME = "schedulingOCCCalendar"

TYPES = ['CLEAR_MODULE', 'EE']
#module.exports = {e: '!!!!!!!!!!!!!'}
TYPES.forEach (type) ->
  module.exports[type] = "modules.#{MODULE_NAME}/#{type}"
