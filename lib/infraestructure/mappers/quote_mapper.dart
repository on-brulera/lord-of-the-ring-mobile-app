import 'package:tolkien/domain/domain.dart';
import 'package:tolkien/infraestructure/models/quotes/quote_quotebd.dart';

class QuoteMapper {

  static Quote quoteDbToEntity(QuoteQuoteDb quoteDb) => Quote(
    id: quoteDb.id, 
    dialog: quoteDb.dialog, 
    movie: quoteDb.movie, 
    character: quoteDb.character, 
    characterId: 'Próximamente');

}