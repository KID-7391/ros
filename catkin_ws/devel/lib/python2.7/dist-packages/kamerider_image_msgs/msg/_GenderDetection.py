# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from kamerider_image_msgs/GenderDetection.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class GenderDetection(genpy.Message):
  _md5sum = "105a02752dd5a1e4af0ec4122f3b9eba"
  _type = "kamerider_image_msgs/GenderDetection"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int8 male_num
int8 female_num
int8 sit_num
int8 stand_num
"""
  __slots__ = ['male_num','female_num','sit_num','stand_num']
  _slot_types = ['int8','int8','int8','int8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       male_num,female_num,sit_num,stand_num

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GenderDetection, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.male_num is None:
        self.male_num = 0
      if self.female_num is None:
        self.female_num = 0
      if self.sit_num is None:
        self.sit_num = 0
      if self.stand_num is None:
        self.stand_num = 0
    else:
      self.male_num = 0
      self.female_num = 0
      self.sit_num = 0
      self.stand_num = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_4b().pack(_x.male_num, _x.female_num, _x.sit_num, _x.stand_num))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 4
      (_x.male_num, _x.female_num, _x.sit_num, _x.stand_num,) = _get_struct_4b().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_4b().pack(_x.male_num, _x.female_num, _x.sit_num, _x.stand_num))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 4
      (_x.male_num, _x.female_num, _x.sit_num, _x.stand_num,) = _get_struct_4b().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4b = None
def _get_struct_4b():
    global _struct_4b
    if _struct_4b is None:
        _struct_4b = struct.Struct("<4b")
    return _struct_4b
