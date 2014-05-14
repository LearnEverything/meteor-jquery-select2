# # Select2 Component
if Meteor.isClient
  # Theses mixins are included, extend the component by creating your own mixins and merging them in here.
  Select2Component = _.extend {},
    Select2Mixins.Base,
    Select2Mixins.Initialize,
    Select2Mixins.Destroy,
    Select2Mixins.Options,
    Select2Mixins.Selector,
    Select2Mixins.Utility,
    Select2Mixins.Debug,
    Select2Mixins.Placeholder
    # Add additional client mixin namespaces here

  # The code below is an example of how to set some example default options for display and language options.
  Select2Component.defaultOptions =
    minimumResultsForSearch: "5"
    width: 200

# Components are client only by default, but if you need to have a presence on the server you can define server mixins.
else if Meteor.isServer
  # `Select2Component = _.extend {}, Select2Mixins.Debug`
  Select2Component = _.extend {},
    Select2Mixins.Base,
    Select2Mixins.Debug
    # Add additional server mixin namespaces here

  Select2Component.defaultOptions = {}