require "test_helper"

class FileTypeDetectorTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::FileTypeDetector::VERSION
  end

  def test_jpg_file
    assert FileTypeDetector::Extension.extension(File.open('test/images/penny_test.jpg')) == '.jpg'
  end

  def test_jpg_file_string
    assert FileTypeDetector::Extension.extension(File.read('test/images/penny_test.jpg')) == '.jpg'
  end

  def test_jpg_path
    assert FileTypeDetector::Extension.extension('test/images/penny_test.jpg') == '.jpg'
  end

  def test_png_file_string
    assert FileTypeDetector::Extension.extension(File.read('test/images/iww.png')) == '.png'
  end

  def test_png_file
    assert FileTypeDetector::Extension.extension(File.open('test/images/iww.png')) == '.png'
  end

  def test_png_file_path
    assert FileTypeDetector::Extension.extension('test/images/iww.png') == '.png'
  end
end
