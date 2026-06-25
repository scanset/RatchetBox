# system_error Class

Represents the base class for all exceptions thrown to report a low-level system error.

## Syntax

```cpp
class system_error : public runtime_error {
    explicit system_error(error_code _Errcode, const string& _Message = "");
    system_error(error_code _Errcode, const char *_Message);
    system_error(error_code::value_type _Errval, const error_category& _Errcat, const string& _Message);
    system_error(error_code::value_type _Errval, const error_category& _Errcat, const char *_Message);

    const error_code& code() const throw();
    const char* what() const noexcept override;
};
```

## Remarks

The value returned by `what` in the class [exception](../standard-library/exception-class.md) is constructed from `_Message` and the stored object of type [error_code](../standard-library/error-code-class.md) (either `code` or `error_code(_Errval, _Errcat)`).

The member function `code` returns the stored [error_code](../standard-library/error-code-class.md) object.