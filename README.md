# deconz_app

#### How to use freezed

```
    // review.dart
    // 1. import freezed_annotation
    import 'package:freezed_annotation/freezed_annotation.dart';
    
    // 2. add 'part' files
    part 'review.freezed.dart';
    part 'review.g.dart';
    
    // 3. add @freezed annotation
    @freezed
    // 4. define a class with a mixin
    class Review with _$Review {
    // 5. define a factory constructor
    factory Review({
    // 6. list all the arguments/properties
    required double score,
    String? review,
    // 7. assign it with the `_Review` class constructor
    }) = _Review;
    
    // 8. define another factory constructor to parse from json
    factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
    }
```
[Parser json to freezed model](https://app.quicktype.io/)

#### DeConZ API    

[Discovery](https://dresden-elektronik.github.io/deconz-rest-doc/misc/discovery/)    

[Authorization](https://dresden-elektronik.github.io/deconz-rest-doc/misc/authorization/)
