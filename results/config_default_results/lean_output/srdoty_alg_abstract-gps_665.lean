import Mathlib

universe u

/-- The four axioms from the statement, formulated for explicit binary
operations `add` and `mul` and distinguished elements `zero` and `one` on a
carrier `F`. This is the usual elementary description of a field. -/
def field_axioms {F : Type u} (add : F → F → F) (mul : F → F → F) (zero one : F) : Prop :=
  (∀ a b c : F, add a (add b c) = add (add a b) c) ∧
  (∀ a b : F, add a b = add b a) ∧
  (∀ a : F, add zero a = a) ∧
  (∀ a : F, ∃ b : F, add a b = zero) ∧
  (∀ a b c : F, mul a (mul b c) = mul (mul a b) c) ∧
  (∀ a b : F, mul a b = mul b a) ∧
  (∀ a : F, mul one a = a) ∧
  (∀ a : F, a ≠ zero → ∃ b : F, mul a b = one) ∧
  (one ≠ zero) ∧
  (∀ a b c : F, mul a (add b c) = add (mul a b) (mul a c))

/-- Existence of explicit operations satisfying the four axioms is equivalent to
existence of a `Field` structure on the carrier `F` (i.e. `F` can be made into a
field). -/
theorem field_axioms_iff_Field (F : Type u) :
  (∃ (add : F → F → F) (mul : F → F → F) (zero one : F), field_axioms (add) (mul) (zero) (one)) ↔ Nonempty (Field F) := by sorry
