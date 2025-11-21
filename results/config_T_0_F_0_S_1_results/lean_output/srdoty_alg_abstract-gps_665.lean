import Mathlib

universe u

variable (F : Type u) (zero one : F) (add mul : F → F → F)

/-- A bundled predicate encoding the usual field axioms for a set F with two binary
operations `add` and `mul`, additive identity `zero` and multiplicative identity `one`.
This is intentionally written as a `Prop`-valued structure so it can be used in an `iff`.
-/
structure IsField : Prop where
  add_assoc    : ∀ a b c : F, add (add a b) c = add a (add b c)
  add_comm     : ∀ a b : F, add a b = add b a
  add_zero     : ∀ a : F, add a zero = a
  add_left_neg : ∀ a : F, ∃ b : F, add b a = zero
  mul_assoc    : ∀ a b c : F, mul (mul a b) c = mul a (mul b c)
  mul_comm     : ∀ a b : F, mul a b = mul b a
  mul_one      : ∀ a : F, mul a one = a
  mul_inv      : ∀ a : F, a ≠ zero → ∃ b : F, mul a b = one ∧ mul b a = one
  one_ne_zero  : one ≠ zero
  left_distrib : ∀ a b c : F, mul a (add b c) = add (mul a b) (mul a c)

/-- Characterisation: `IsField` is equivalent to the usual list of four properties
(1) (F,+) is an abelian group with identity `zero`; (2) (F \ {zero}, ·) is an abelian
group with identity `one`; (3) `one ≠ zero`; (4) left-distributivity of `mul` over `add`.
-/
theorem field_iff_group_axioms :
  IsField F zero one add mul ↔
  ( -- (1) (F,+) is an abelian group with identity `zero`:
    (∀ a b c : F, add (add a b) c = add a (add b c)) ∧
    (∀ a b : F, add a b = add b a) ∧
    (∀ a : F, add a zero = a) ∧
    (∀ a : F, ∃ b : F, add b a = zero)
  ) ∧
  ( -- (2) (F \ {zero}, ·) is an abelian group with identity `one`:
    (∀ a b c : F, mul (mul a b) c = mul a (mul b c)) ∧
    (∀ a b : F, mul a b = mul b a) ∧
    (∀ a : F, mul a one = a) ∧
    (∀ a : F, a ≠ zero → ∃ b : F, mul a b = one ∧ mul b a = one)
  ) ∧
  ( -- (3) `one ≠ zero`:
    one ≠ zero
  ) ∧
  ( -- (4) distributivity:
    ∀ a b c : F, mul a (add b c) = add (mul a b) (mul a c)
  ) := by sorry
