import Mathlib

/-!
Translate: Let F be a set with two binary operations + and ·. Show that F is a field iff:
(1) (F,+) is an abelian group with identity 0;
(2) (F\{0},·) is an abelian group with identity 1;
(3) 1 ≠ 0;
(4) a(b+c)=ab+ac for all a,b,c ∈ F.

We state an equivalent formulation using Mathlib typeclasses and explicit algebraic axioms.
-/

theorem field_iff_axioms (F : Type _) [Add F] [Mul F] [Zero F] [One F] [Neg F] :
  Nonempty (Field F) ↔
    (Nonempty (AddCommGroup F) ∧
     (∀ a b c : F, (a * b) * c = a * (b * c)) ∧
     (∀ a : F, 1 * a = a ∧ a * 1 = a) ∧
     (∀ a b : F, a * b = b * a) ∧
     (1 : F) ≠ 0 ∧
     (∀ a : F, a ≠ 0 → ∃ b : F, a * b = 1 ∧ b * a = 1) ∧
     (∀ a b c : F, a * (b + c) = a * b + a * c)) := by
  sorry
