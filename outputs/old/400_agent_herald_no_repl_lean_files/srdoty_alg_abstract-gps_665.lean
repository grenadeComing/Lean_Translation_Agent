import Mathlib

/-!
Let F be a set with two binary operations + and ·. Show that F is a field iff:

(1) (F, +) is an abelian group with identity 0;
(2) (F \ {0}, ·) is an abelian group with identity 1;
(3) 1 ≠ 0;
(4) a(b + c) = ab + ac for all a, b, c ∈ F.

The following states this equivalence in terms of Mathlib's Field and standard group/units
predicates. The proof is omitted (``by sorry'').
-/

theorem field_iff_group_axioms (F : Type _) [MulOneClass F] :
  Field F ↔
  (AddCommGroup F) ∧
  (CommGroup (Units F)) ∧
  (1 : F) ≠ (0 : F) ∧
  (∀ a b c : F, a * (b + c) = a * b + a * c) := by
  sorry
