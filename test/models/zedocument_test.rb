require "test_helper"

class Zedocumenttest < ActiveSupport::TestCase
  test "it deletes old images upon update" do
    doc = Zedocument.new

    # Initial image and creation
    doc.remote_filename_url = "https://www.ruby-lang.org/images/header-ruby-logo.png"
    doc.save

    old_path = doc.filename.path

    assert(File.exists?(old_path))

    # Update the image
    doc.remote_filename_url = "http://memesvault.com/wp-content/uploads/Wat-Meme-Old-Lady-01.jpg"
    doc.save

    new_path = doc.filename.path

    assert_not_equal(new_path, old_path)

    assert(File.exists?(new_path))
    assert_not(File.exists?(old_path))
  end

end
