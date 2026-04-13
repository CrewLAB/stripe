part of '../../messages.dart';

/// Represents a Stripe expandable field, which is either a bare string ID
/// or a full object depending on whether `expand[]` was requested.
///
/// [id] is always populated. [object] is non-null only when expanded.
class Expandable<T> {
  final String id;
  final T? object;

  const Expandable(this.id, [this.object]);

  bool get isExpanded => object != null;
}
