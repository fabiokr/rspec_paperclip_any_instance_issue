This branch demonstrates an issue when trying to stub Paperclip::Attachment :flush_deletes and :flush_writes methods. Paperclip::Attachment.any_instance.stub() fails because of the way Attachment instances extends on a per instance base its storage methods in https://github.com/thoughtbot/paperclip/blob/master/lib/paperclip/attachment.rb#L368.

==== Running

    bundle
    bundle exec rspec example_spec.rb