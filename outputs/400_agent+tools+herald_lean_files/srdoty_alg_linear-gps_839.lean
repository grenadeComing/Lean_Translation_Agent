import Mathlib

/-
Let F be a field and G = { E t | t ∈ F } with
E(t) = [[1, t], [0, 1]].
We state that G is a matrix group under multiplication by
expressing closure under multiplication, identity, and inverses.
-/

theorem srdoty_matrix_unipotent_group (F : Type*) [Field F] :
  let E := fun (t : F) => fun (i j : Fin 2) =>
    if i = 0 then if j = 0 then (1 : F) else t else if j = 0 then (0 : F) else (1 : F)
  let G := { M : Matrix (Fin 2) (Fin 2) F | ∃ t, M = E t }
  (∀ t1 t2, E t1 * E t2 = E (t1 + t2)) ∧ (E 0 = 1) ∧ (∀ t, ∃ s, E t * E s = 1 ∧ E s * E t = 1) := by sorry
