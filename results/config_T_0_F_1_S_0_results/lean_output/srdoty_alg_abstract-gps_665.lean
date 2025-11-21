import Mathlib

/-- Predicate: the type `F` with binary ops `add` and `mul`, neutral elements `zero` and `one`,
and unary `neg` and `inv` is a field (encoded as the usual tuple of axioms). -/
def IsFieldOps (F : Type _) (add mul : F → F → F) (zero one : F) (neg inv : F → F) : Prop :=
  -- additive abelian group
  (∀ a b c, add a (add b c) = add (add a b) c) ∧
  (∀ a b, add a b = add b a) ∧
  (∀ a, add zero a = a) ∧
  (∀ a, add (neg a) a = zero) ∧
  -- multiplicative abelian group on F \ {zero}
  (∀ a b c, mul a (mul b c) = mul (mul a b) c) ∧
  (∀ a b, mul a b = mul b a) ∧
  (∀ a, mul one a = a) ∧
  (∀ a, a ≠ zero → mul (inv a) a = one) ∧
  -- 1 ≠ 0
  (one ≠ zero) ∧
  -- left distributivity
  (∀ a b c, mul a (add b c) = add (mul a b) (mul a c))

/-- Formal translation: `F` with the given operations is a field iff the four items (1)-(4)
hold. -/
theorem field_iff_group_axioms (F : Type _) (add mul : F → F → F) (zero one : F) (neg inv : F → F) :
  IsFieldOps F add mul zero one neg inv ↔
  ( -- (1) additive abelian group
    (∀ a b c, add a (add b c) = add (add a b) c) ∧
    (∀ a b, add a b = add b a) ∧
    (∀ a, add zero a = a) ∧
    (∀ a, add (neg a) a = zero)
  ) ∧
  ( -- (2) multiplicative abelian group on nonzero
    (∀ a b c, mul a (mul b c) = mul (mul a b) c) ∧
    (∀ a b, mul a b = mul b a) ∧
    (∀ a, mul one a = a) ∧
    (∀ a, a ≠ zero → mul (inv a) a = one)
  ) ∧
  -- (3) 1 ≠ 0
  (one ≠ zero) ∧
  -- (4) distributivity
  (∀ a b c, mul a (add b c) = add (mul a b) (mul a c)) := by sorry
