import Mathlib

/-
Translate: Let F be a set with two binary operations + and ·. Show that F is a field iff:
(1) (F,+) is an abelian group with identity 0;
(2) (F\{0},·) is an abelian group with identity 1;
(3) 1 ≠ 0; and
(4) a(b+c)=ab+ac for all a,b,c∈F.

We encode this by giving an explicit predicate `is_field` on a carrier `F` and two binary
operations `add` and `mul` together with distinguished elements `zero` and `one`, and state
the equivalence with the list of axioms. The proof is omitted (:= by sorry).
-/

def is_field (F : Type*) (add mul : F → F → F) (zero one : F) : Prop :=
  (∀ a b, add a b = add b a) ∧
  (∀ a b c, add (add a b) c = add a (add b c)) ∧
  (∀ a, add a zero = a) ∧
  (∀ a, ∃ b, add a b = zero) ∧
  (∀ a b, mul a b = mul b a) ∧
  (∀ a, mul a one = a) ∧
  (one ≠ zero) ∧
  (∀ a, a ≠ zero → ∃ b, mul a b = one) ∧
  (∀ a b c, mul a (add b c) = add (mul a b) (mul a c))

theorem is_field_iff_axioms (F : Type*) (add mul : F → F → F) (zero one : F) :
  is_field F add mul zero one ↔
  ((∀ a b, add a b = add b a) ∧
   (∀ a b c, add (add a b) c = add a (add b c)) ∧
   (∀ a, add a zero = a) ∧
   (∀ a, ∃ b, add a b = zero) ∧
   (∀ a b, mul a b = mul b a) ∧
   (∀ a, mul a one = a) ∧
   (one ≠ zero) ∧
   (∀ a, a ≠ zero → ∃ b, mul a b = one) ∧
   (∀ a b c, mul a (add b c) = add (mul a b) (mul a c))) := by sorry
